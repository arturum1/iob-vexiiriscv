package vexiiriscv.memory

import spinal.core._
import spinal.lib._
import spinal.lib.bus.misc.AddressMapping
import spinal.lib.bus.tilelink.M2sTransfers
import spinal.lib.logic.{DecodingSpec, Masked, Symplify}
import spinal.lib.misc.plugin.FiberPlugin
import spinal.lib.system.tag.{MappedTransfers, PmaRegion}
import vexiiriscv.Global

import scala.collection.mutable.ArrayBuffer


trait PmaOp
object PmaLoad extends PmaOp
object PmaStore extends PmaOp

class PmaCmd(addressWidth : Int, sizes : Seq[Int], ops : Seq[PmaOp]) extends Bundle {
  val address = UInt(addressWidth bits)
  val size = Bits(log2Up(sizes.size) bits)
  val op = Bits(log2Up(ops.size) bits)
}

class PmaRsp() extends Bundle {
  val fault = Bool()
  val io = Bool()
}

case class PmaPort(addressWidth : Int, sizes : Seq[Int], ops : Seq[PmaOp]) extends Bundle {
  val cmd = new PmaCmd(addressWidth, sizes, ops)
  val rsp = new PmaRsp()
}

class PmaLogic(port : PmaPort, regions : scala.collection.Seq[PmaRegion]) extends Area {
  import port._
  val hitsTerms = ArrayBuffer[Masked]()
  val mainSpec = new DecodingSpec(Bool()).setDefault(Masked.zero)
  val executableSpec = new DecodingSpec(Bool()).setDefault(Masked.zero)

  val addressBits = cmd.address.asBits
  val argsBits = cmd.size ## cmd.op
  val argsWidth = widthOf(argsBits)
  val argsMask = BigInt((1 << argsWidth)-1)
  def opMask(opId: Int, sizeId: Int) = Masked(opId | (sizeId << widthOf(cmd.op)), argsMask)

  // Declare new input ports for IO region base and size
  val ioBase = in UInt(addressWidth bits)
  val ioRange = in UInt(addressWidth bits)

  val addressUInt = cmd.address.asBits.asUInt
  val ioEnd = ioBase + ioRange

  val onRegion = for (region <- regions) yield new Area {
    val inIoRange = (addressUInt >= ioBase) && (addressUInt < ioEnd)
    val hit = if (!region.isMain) inIoRange else !inIoRange
    val maskedHits = Seq(Masked(hit.asUInt, B(1 bits).asUInt))
    hitsTerms ++= maskedHits
    if (region.isMain) mainSpec.addNeeds(maskedHits, Masked.one)
    if(region.isExecutable) executableSpec.addNeeds(maskedHits, Masked.one)
  }

  val byTransfers = regions.groupBy(_.transfers)
  val onTransfers = for ((transfer, regions) <- byTransfers) yield new Area {
    val terms = ArrayBuffer[Masked]()
    val addressSpec = new DecodingSpec(Bool()).setDefault(Masked.zero)
    //for (region <- regions) terms ++= AddressMapping.terms(region.mapping, addressWidth)
    for (region <- regions) {
      val inIoRange = (addressUInt >= ioBase) && (addressUInt < ioEnd)
      val hit = if (!region.isMain) inIoRange else !inIoRange
      val maskedHits = Seq(Masked(hit.asUInt, B(1 bits).asUInt))
      terms ++= maskedHits
    }

    addressSpec.addNeeds(terms, Masked.one)
    val addressHit = addressSpec.build(addressBits, hitsTerms)

    val argsOk, argsKo = ArrayBuffer[Masked]()
    for((size, sizeId) <- sizes.zipWithIndex) {
      for((op, opId) <- ops.zipWithIndex){
        val mask = opMask(opId, sizeId)
        val ok = op match {
          case PmaLoad => transfer match {
            case t: M2sTransfers => t.get.contains(size) || t.acquireB.contains(size)
          }
          case PmaStore => transfer match {
            case t: M2sTransfers => t.putFull.contains(size) || t.acquireT.contains(size)
          }
        }
        if(ok) argsOk += mask else argsKo += mask
      }
    }
    val argsHit = Symplify(argsBits, argsOk, argsKo)

    val hit = argsHit && addressHit
  }


  port.rsp.fault := !(Symplify(addressBits, hitsTerms) && onTransfers.map(_.hit).orR)
  port.rsp.io := !mainSpec.build(addressBits, hitsTerms)
}

// Modified version of PmaLogic
/*
class PmaLogic(port: PmaPort, regions: Seq[PmaRegion]) extends Area {
  import port._

  // Declare new input ports for IO region base and size
  val ioBase = in UInt(addressWidth bits)
  val ioRange = in UInt(addressWidth bits)

  val addressBits = cmd.address.asBits
  val addressUInt = cmd.address.asBits.asUInt
  val ioEnd = ioBase + ioRange

  val hitsTerms = ArrayBuffer[Bool]()
  val mainSpec = new DecodingSpec(Bool()).setDefault(Masked.zero)
  val executableSpec = new DecodingSpec(Bool()).setDefault(Masked.zero)

  // For each region, define a hit Bool depending on io range and isMain flag
  val onRegion = for (region <- regions) yield new Area {
    val inIoRange = (addressUInt >= ioBase) && (addressUInt < ioEnd)
    val hit = if (!region.isMain) inIoRange else !inIoRange
    //maskedHit = Masked(hit.asUInt, B(1 bits).asUInt)
    hitsTerms += maskedHit

    if (region.isMain) mainSpec.addNeeds(Seq(hit), Masked.one)
    if (region.isExecutable) executableSpec.addNeeds(Seq(hit), Masked.one)
  }

  val argsBits = cmd.size ## cmd.op
  val argsWidth = widthOf(argsBits)
  val argsMask = BigInt((1 << argsWidth) - 1)

  def opMask(opId: Int, sizeId: Int) = Masked(opId | (sizeId << widthOf(cmd.op)), argsMask)

  val byTransfers = regions.groupBy(_.transfers)
  val onTransfers = for ((transfer, groupRegions) <- byTransfers) yield new Area {
    val terms = ArrayBuffer[Bool]()
    val addressSpec = new DecodingSpec(Bool()).setDefault(Masked.zero)

    // For each region in this transfer group, calculate hit based on io range and isMain
    for (region <- groupRegions) {
      val inIoRange = (addressUInt >= ioBase) && (addressUInt < ioEnd)
      val regionHit = if (!region.isMain) inIoRange else !inIoRange
      terms += regionHit
    }

    addressSpec.addNeeds(terms, Masked.one)
    val addressHit = addressSpec.build(addressBits, hitsTerms)

    val argsOk, argsKo = ArrayBuffer[Masked]()
    for ((size, sizeId) <- sizes.zipWithIndex) {
      for ((op, opId) <- ops.zipWithIndex) {
        val mask = opMask(opId, sizeId)
        val ok = op match {
          case PmaLoad => transfer match {
            case t: M2sTransfers => t.get.contains(size) || t.acquireB.contains(size)
          }
          case PmaStore => transfer match {
            case t: M2sTransfers => t.putFull.contains(size) || t.acquireT.contains(size)
          }
        }
        if (ok) argsOk += mask else argsKo += mask
      }
    }
    val argsHit = Symplify(argsBits, argsOk, argsKo)

    val hit = argsHit && addressHit
  }

  port.rsp.fault := !(Symplify(addressBits, hitsTerms) && onTransfers.map(_.hit).orR)
  port.rsp.io := !mainSpec.build(addressBits, hitsTerms)
}
*/

/** Implement the hardware to translate an address into its Physical Memory Access permissions.
  * For VexiiRiscv the permissions are :
  * - fault => is there something at that address ?
  * - io => is it an IO memory region (strongly ordered / with side effects) ?
  */
/*
class PmaLogic(port : PmaPort, regions : scala.collection.Seq[PmaRegion]) extends Area {
  import port._
  val hitsTerms = ArrayBuffer[Masked]()
  val mainSpec = new DecodingSpec(Bool()).setDefault(Masked.zero)
  val executableSpec = new DecodingSpec(Bool()).setDefault(Masked.zero)

  val addressBits = cmd.address.asBits
  val argsBits = cmd.size ## cmd.op
  val argsWidth = widthOf(argsBits)
  val argsMask = BigInt((1 << argsWidth)-1)
  def opMask(opId: Int, sizeId: Int) = Masked(opId | (sizeId << widthOf(cmd.op)), argsMask)


  val onRegion = for (region <- regions) yield new Area {
    val regionTerms = AddressMapping.terms(region.mapping, addressWidth)
    hitsTerms ++= regionTerms
    if (region.isMain) mainSpec.addNeeds(regionTerms, Masked.one)
    if(region.isExecutable) executableSpec.addNeeds(regionTerms, Masked.one)
  }

  val byTransfers = regions.groupBy(_.transfers)
  val onTransfers = for ((transfer, regions) <- byTransfers) yield new Area {
    val terms = ArrayBuffer[Masked]()
    val addressSpec = new DecodingSpec(Bool()).setDefault(Masked.zero)
    for (region <- regions) terms ++= AddressMapping.terms(region.mapping, addressWidth)
    addressSpec.addNeeds(terms, Masked.one)
    val addressHit = addressSpec.build(addressBits, hitsTerms)

    val argsOk, argsKo = ArrayBuffer[Masked]()
    for((size, sizeId) <- sizes.zipWithIndex) {
      for((op, opId) <- ops.zipWithIndex){
        val mask = opMask(opId, sizeId)
        val ok = op match {
          case PmaLoad => transfer match {
            case t: M2sTransfers => t.get.contains(size) || t.acquireB.contains(size)
          }
          case PmaStore => transfer match {
            case t: M2sTransfers => t.putFull.contains(size) || t.acquireT.contains(size)
          }
        }
        if(ok) argsOk += mask else argsKo += mask
      }
    }
    val argsHit = Symplify(argsBits, argsOk, argsKo)

    val hit = argsHit && addressHit
  }


  port.rsp.fault := !(Symplify(addressBits, hitsTerms) && onTransfers.map(_.hit).orR)
  port.rsp.io := !mainSpec.build(addressBits, hitsTerms)
}
*/
