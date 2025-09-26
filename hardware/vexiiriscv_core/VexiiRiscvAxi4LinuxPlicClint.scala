package vexiiriscv

import spinal.core._
import spinal.core.fiber.Fiber
import spinal.lib.{AnalysisUtils, LatencyAnalysis}
import spinal.lib.bus.misc.SizeMapping
import spinal.lib.bus.tilelink.{M2sTransfers, SizeRange}
import spinal.lib.misc.{InterruptNode, PathTracer}
import spinal.lib.system.tag.{MemoryEndpoint, PMA, PmaRegion, PmaRegionImpl, VirtualEndpoint}
import vexiiriscv.compat.MultiPortWritesSymplifier
import vexiiriscv.decode.{Decode, DecodePipelinePlugin}
import vexiiriscv.execute.{CsrRamPlugin, ExecuteLanePlugin, SrcPlugin}
import vexiiriscv.execute.lsu._
import vexiiriscv.fetch._
import vexiiriscv.misc.{EmbeddedRiscvJtag, PrivilegedPlugin}
import vexiiriscv.prediction.BtbPlugin
import vexiiriscv.regfile.RegFilePlugin
import vexiiriscv.soc.TilelinkVexiiRiscvFiber

import scala.collection.mutable.ArrayBuffer

import spinal.lib.bus.amba4.axi.Axi4SpecRenamer

import spinal.lib.misc.plugin.FiberPlugin
import spinal.lib.misc.AxiLite4Clint
import spinal.lib.misc.plic.AxiLite4Plic
import spinal.lib.bus.amba4.axilite.AxiLite4SpecRenamer

// Create plugin for CLINT and PLIC
class ClintPlicPlugin extends FiberPlugin {
  // Define IO signals exposed by the plugin
  val logic = during build new Area {
    // Instantiate CLINT and PLIC controllers
    val clintCtrl = new AxiLite4Clint(1, bufferTime = false)
    val plicCtrl = new AxiLite4Plic(sourceCount = 31, targetCount = 2)

    // Access AXI-Lite bus interfaces, convert to IO
    val clint = clintCtrl.io.bus.toIo()
    val plic = plicCtrl.io.bus.toIo()

    // Define interrupt input bits for PLIC sources
    val plicInterrupts = in Bits(32 bits)
    plicInterrupts.setName("plicInterrupts")  // Remove plugin prefix from port name
    plicCtrl.io.sources := plicInterrupts >> 1

    // Rename AXI ports to use standard AXI signal names
    AxiLite4SpecRenamer(clint)
    AxiLite4SpecRenamer(plic)

    // Change prefix of AXI ports
    clint.setName("clint")
    plic.setName("plic")
  }
}

// Generates VexiiRiscv verilog using command line arguments
object VexiiRiscvAxi4LinuxPlicClint extends App {
  val param = new ParamSimple()
  val sc = SpinalConfig()
  val regions = ArrayBuffer[PmaRegion]()
  val analysis = new AnalysisUtils
  var reportModel = false

  // Parse command line arguments. Type --help to see available options.
  assert(new scopt.OptionParser[Unit]("VexiiRiscv") {
    help("help").text("prints this usage text")
    opt[Unit]("report-model") action { (v, c) => reportModel = true }
    param.addOptions(this)
    analysis.addOption(this)
    ParamSimple.addOptionRegion(this, regions)
  }.parse(args, ()).nonEmpty)

  // Use AXI4 ibus (fetch) and dbus (lsu)
  param.fetchBus = FetchBusEnum.axi4
  param.lsuBus = LsuBusEnum.axi4
  // Use SU riscv extensions and enable MMU
  param.withLinux()

  // Set memory regions
  // Set full 32 bit address space as main memory
  regions.append(
    new PmaRegionImpl(
      mapping = SizeMapping(0x00000000L, 0x100000000L), // 4GB = 2^32 bytes
      isMain = true,
      isExecutable = true,
      transfers = M2sTransfers(
        get = SizeRange.all,
        putFull = SizeRange.all
      )
    )
  )

  // Set default memory map (Physical Memory Attributes - PMA) if no memory regions are defined 
  if(regions.isEmpty) regions ++= ParamSimple.defaultPma

  // Configure (uncached) IO range
  // Vexiiriscv does not have cache by default (enable lsu1 to have cache)

  // Generate CPU's Verilog
  val report = sc.generateVerilog {
    val plugins = param.plugins()
    // Add PLIC and CLINT
    plugins += new ClintPlicPlugin()
    // Re-configure some plugins
    plugins.foreach{
      case p : EmbeddedRiscvJtag => {
        p.debugCd = ClockDomain.current.copy(reset = Bool().setName("EmbeddedRiscvJtag_logic_debug_reset"))
        p.noTapCd = ClockDomain(Bool().setName("EmbeddedRiscvJtag_logic_jtagInstruction_tck"))
      }
      // case p : FetchCachelessAxi4Plugin => {
      //   // Rename AXI4 ports of ibus to standard names
      //   Axi4SpecRenamer(p.logic.bridge.axi)
      // }
      //case p : LsuCachelessAxi4Plugin => {
      //  // Rename AXI4 ports of dbus to standard names
      //  Axi4SpecRenamer(p.logic.axi)
      //}
      // TODO: Connect PLIC and CLINT to PrivilegedPlugin
      // case p: PrivilegedPlugin => {
      //   // Interrupt connections based on NaxRiscvBmbGenerator.scala and CsrPlugin of VexRiscvAxi4LinuxPlicClint.scala 
      //   plugin.io.int.machine.external setAsDirectionLess() := cpu.plicCtrl.io.targets(0)       // external interrupts from PLIC
      //   plugin.io.int.machine.timer  setAsDirectionLess() := cpu.clintCtrl.io.timerInterrupt(0)  // timer interrupts from CLINT
      //   plugin.io.int.machine.software  setAsDirectionLess() := cpu.clintCtrl.io.softwareInterrupt(0) // software interrupts from CLINT
      //   if (plugin.p.withSupervisor) plugin.io.int.supervisor.external  setAsDirectionLess() := cpu.plicCtrl.io.targets(1) // supervisor external interrupts from PLIC
      //   plugin.io.rdtime  setAsDirectionLess() := cpu.clintCtrl.io.time // time register from CLINT
      // }
      case _ =>
    }
    // Set memory map
    ParamSimple.setPma(plugins, regions)
    // Elaborate vexiiriscv
    val cpu = VexiiRiscv(plugins)
    cpu.setDefinitionName("VexiiRiscvAxi4LinuxPlicClint")

     // cpu.rework {
     //   //val fetch_plugin = cpu.host[FetchCachelessAxi4Plugin]
     //   //// For some reason, trying to access bridge causes JVM to get stuck
     //   //Axi4SpecRenamer(fetch_plugin.logic.bridge.axi)

     //   //val lsu_plugin = cpu.host[LsuCachelessAxi4Plugin]
     //   //Axi4SpecRenamer(lsu_plugin.logic.axi)

     //   //val priviledged_plugin = cpu.host[PrivilegedPlugin]
     //   //// Interrupt connections based on NaxRiscvBmbGenerator.scala and CsrPlugin of VexRiscvAxi4LinuxPlicClint.scala 
     //   //plugin.io.int.machine.external setAsDirectionLess() := cpu.plicCtrl.io.targets(0)       // external interrupts from PLIC
     //   //plugin.io.int.machine.timer  setAsDirectionLess() := cpu.clintCtrl.io.timerInterrupt(0)  // timer interrupts from CLINT
     //   //plugin.io.int.machine.software  setAsDirectionLess() := cpu.clintCtrl.io.softwareInterrupt(0) // software interrupts from CLINT
     //   //if (plugin.p.withSupervisor) plugin.io.int.supervisor.external  setAsDirectionLess() := cpu.plicCtrl.io.targets(1) // supervisor external interrupts from PLIC
     //   //plugin.io.rdtime  setAsDirectionLess() := cpu.clintCtrl.io.time // time register from CLINT
     // }
     // Return cpu to generateVerilog
    cpu
  }

  analysis.report(report)

  if(reportModel){
    misc.Reporter.model(report.toplevel)
  }
}
