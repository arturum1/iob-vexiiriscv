# SPDX-FileCopyrightText: 2025 IObundle
#
# SPDX-License-Identifier: MIT

#PATHS
VEXIIRISCV_DIR ?= $(shell pwd)
VEXII_HARDWARE_DIR:=$(VEXIIRISCV_DIR)/hardware
VEXIIRISCV_SRC_DIR:=$(VEXII_HARDWARE_DIR)/src
VEXII_SUBMODULES_DIR:=$(VEXIIRISCV_DIR)/submodules

CPU ?= VexiiRiscvAxi4LinuxPlicClint
JDK_HOME := $(shell dirname $$(dirname $$(which java)))

# Configure VexiiRiscv CPU:
# - Use AXI4 ibus (fetch) and dbus (lsu)
#PARAMS ?= --fetch-axi4 --lsu-axi4

# By default, vexiiriscv uses the following instruction set and extensions:
# - xlen=32 (rv32)
# - withRve=false (extension E = True; extension I = False)
# - withMul=false (extension M)
# - withRva=false (extension A)
# - withRvf=false (extension F)
# - withRvd=false (extension D)
# - withRvc=false (extension C)
#
# Extensions S, U are disabled? and non-configurable via command line arguments (But can be enabled with --debug-privileged).

# Primary targets
vexiiriscv:
	#mkdir -p $(VEXII_SUBMODULES_DIR)/VexiiRiscv/src/main/scala/vexiiriscv/platform
	cp $(VEXII_HARDWARE_DIR)/vexiiriscv_core/VexiiRiscvAxi4LinuxPlicClint.scala $(VEXII_SUBMODULES_DIR)/VexiiRiscv/src/main/scala/vexiiriscv/
	cp $(VEXII_HARDWARE_DIR)/vexiiriscv_core/PcPlugin.scala $(VEXII_SUBMODULES_DIR)/VexiiRiscv/src/main/scala/vexiiriscv/fetch/
	#cp $(VEXII_HARDWARE_DIR)/vexiiriscv_core/MmuPlugin.scala $(VEXII_SUBMODULES_DIR)/VexiiRiscv/src/main/scala/vexiiriscv/misc/
	#cp $(VEXII_HARDWARE_DIR)/vexiiriscv_core/LsuPlugin.scala $(VEXII_SUBMODULES_DIR)/VexiiRiscv/src/main/scala/vexiiriscv/lsu/
	# (Re-)try to apply these patches: https://github.com/SpinalHDL/VexiiRiscv/issues/140#issuecomment-2725576402
	#-make -C submodules/VexiiRiscv install-core
	# Run sbt to build CPU and copy generated verilog to this repo
	cd submodules/VexiiRiscv && \
	sbt -java-home $(JDK_HOME) "runMain vexiiriscv.$(CPU) $(PARAMS)" && \
	cp $(CPU).v $(VEXIIRISCV_SRC_DIR)/$(CPU).v
	#cp $(CPU).v_*.bin $(VEXII_HARDWARE_DIR)/init_mems

vexiiriscv-help:
	cd submodules/VexiiRiscv && \
	sbt -java-home $(JDK_HOME) "runMain vexiiriscv.Generate --help"

#
# Clean
#
clean-vexiiriscv:
	rm $(VEXIIRISCV_SRC_DIR)/$(CPU).v

clean-all: clean-vexiiriscv

.PHONY: vexiiriscv vexiiriscv-help clean-vexiiriscv clean-all
