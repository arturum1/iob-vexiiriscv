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

import spinal.lib.misc.AxiLite4Clint
import spinal.lib.misc.plic.AxiLite4Plic
import spinal.lib.bus.amba4.axi.Axi4SpecRenamer
import spinal.lib.bus.amba4.axilite.AxiLite4SpecRenamer

import scala.collection.mutable.ArrayBuffer

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

  // Set memory regions
  // TODO:

  // Set default memory map (Physical Memory Attributes - PMA) if no memory regions are defined 
  if(regions.isEmpty) regions ++= ParamSimple.defaultPma

  // TODO: Add PLIC and CLINT
  // val clintCtrl = new AxiLite4Clint(1, bufferTime = false)
  // val plicCtrl = new AxiLite4Plic(
  //   sourceCount = 31,
  //   targetCount = 2
  // )
  //
  // val clint = clintCtrl.io.bus.toIo()
  // val plic = plicCtrl.io.bus.toIo()
  // val plicInterrupts = in Bits(32 bits)
  // plicCtrl.io.sources := plicInterrupts >> 1
  //
  // AxiLite4SpecRenamer(clint)
  // AxiLite4SpecRenamer(plic)


  // Generate CPU's Verilog
  val report = sc.generateVerilog {
    val plugins = param.plugins()
    // Configure plugins
    plugins.foreach{
      case p : EmbeddedRiscvJtag => {
        p.debugCd = ClockDomain.current.copy(reset = Bool().setName("EmbeddedRiscvJtag_logic_debug_reset"))
        p.noTapCd = ClockDomain(Bool().setName("EmbeddedRiscvJtag_logic_jtagInstruction_tck"))
      }
      //case p : FetchCachelessAxi4Plugin => {
      //  // Rename AXI4 ports of ibus to standard names
      //  Axi4SpecRenamer(p.logic.bridge.axi)
      //}
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
    // Generate VexiiRiscv
    VexiiRiscv(plugins).setDefinitionName("VexiiRiscvAxi4LinuxPlicClint")
  }

  analysis.report(report)

  if(reportModel){
    misc.Reporter.model(report.toplevel)
  }
}
