# SPDX-FileCopyrightText: 2025 IObundle
#
# SPDX-License-Identifier: MIT

#PATHS
VEXIIRISCV_DIR ?= $(shell pwd)
VEXII_HARDWARE_DIR:=$(VEXIIRISCV_DIR)/hardware
VEXIIRISCV_SRC_DIR:=$(VEXII_HARDWARE_DIR)/src
VEXII_SUBMODULES_DIR:=$(VEXIIRISCV_DIR)/submodules

# Rules
.PHONY: vexiiriscv clean-all qemu

CPU ?= VexiiRiscvAxi4LinuxPlicClint
JDK_HOME := $(shell dirname $$(dirname $$(which java)))

# Primary targets
vexiiriscv:
	#mkdir -p $(VEXII_SUBMODULES_DIR)/VexiiRiscv/src/main/scala/vexiiriscv/platform/asic
	cp $(VEXII_HARDWARE_DIR)/vexiiriscv_core/VexiiRiscvAxi4LinuxPlicClint.scala $(VEXII_SUBMODULES_DIR)/VexiiRiscv/src/main/scala/vexiiriscv/platform/asic/
	cp $(VEXII_HARDWARE_DIR)/vexiiriscv_core/PcPlugin.scala $(VEXII_SUBMODULES_DIR)/VexiiRiscv/src/main/scala/vexiiriscv/fetch/
	cp $(VEXII_HARDWARE_DIR)/vexiiriscv_core/MmuPlugin.scala $(VEXII_SUBMODULES_DIR)/VexiiRiscv/src/main/scala/vexiiriscv/misc/
	cp $(VEXII_HARDWARE_DIR)/vexiiriscv_core/LsuPlugin.scala $(VEXII_SUBMODULES_DIR)/VexiiRiscv/src/main/scala/vexiiriscv/lsu/
	# (Re-)try to apply these patches: https://github.com/SpinalHDL/VexiiRiscv/issues/140#issuecomment-2725576402
	-make -C submodules/VexiiRiscv install-core
	# Run sbt to build CPU and copy generated verilog to this repo
	cd submodules/VexiiRiscv && \
	sbt -java-home $(JDK_HOME) "runMain vexiiriscv.platform.asic.$(CPU)" && \
	cp $(CPU).v $(VEXIIRISCV_SRC_DIR)/$(CPU).v && \
	cp $(CPU).v_*.bin $(VEXII_HARDWARE_DIR)/init_mems

#
# Clean
#
clean-vexiiriscv:
	rm $(VEXIIRISCV_SRC_DIR)/$(CPU).v

clean-all: clean-vexiiriscv
