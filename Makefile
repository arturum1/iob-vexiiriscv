# SPDX-FileCopyrightText: 2025 IObundle
#
# SPDX-License-Identifier: MIT

#PATHS
VEXIIRISCV_DIR ?= $(shell pwd)
VEXII_HARDWARE_DIR:=$(VEXIIRISCV_DIR)/hardware
VEXIIRISCV_SRC_DIR:=$(VEXII_HARDWARE_DIR)/src
VEXII_SUBMODULES_DIR:=$(VEXIIRISCV_DIR)/submodules

JDK_HOME := $(shell dirname $$(dirname $$(which java)))

# Linux-compatible VexiiRiscv configuration with AXI4 interfaces
# - 32-bit RISC-V with supervisor mode (required for Linux)
# - AXI4 interfaces for instruction and data buses
# - Memory regions:
#   - 0x00000000-0x7FFFFFFF: Cached (main)
#   - 0x80000000-0xBFFFFFFF: Uncached (IO)
#   - 0xC0000000-0xFFFFFFFF: Cached (main)

# Set USE_CACHE=0 to generate without L1 data cache
USE_CACHE ?= 1

PARAMS ?= \
	--xlen=32 \
	--reset-vector=0x40000000 \
	--region base=0,size=80000000,main=1,exe=1 \
	--region base=80000000,size=40000000,main=0,exe=1 \
	--region base=c0000000,size=40000000,main=1,exe=1 \
	--with-rvm \
	--with-rvc \
	--with-supervisor \
	--fetch-l1 \
	--fetch-axi4 \
	--with-btb \
	--with-gshare \
	--with-ras

ifeq ($(USE_CACHE),1)
	PARAMS += --lsu-l1 --lsu-l1-axi4 --lsu-axi4
	SED_DBUS := LsuL1Axi4Plugin_logic_axi_
	SED_IOBUS := LsuCachelessAxi4Plugin_logic_axi_
else
	PARAMS += --lsu-axi4
	SED_DBUS := LsuCachelessAxi4Plugin_logic_axi_
	SED_IOBUS :=
endif

# Primary targets
vexiiriscv:
	cd submodules/VexiiRiscv && \
	sbt "runMain vexiiriscv.Generate $(PARAMS)"
	mkdir -p $(VEXIIRISCV_SRC_DIR)
	sed -e 's/FetchL1Axi4Plugin_logic_axi_/iBusAxi_/g' \
	    -e 's/$(SED_DBUS)/dBusAxi_/g' \
	    $(if $(SED_IOBUS),-e 's/$(SED_IOBUS)/ioBusAxi_/g') \
	    -e 's/_payload_//g' \
	    -e 's/_valid/valid/g' \
	    -e 's/_ready/ready/g' \
	    submodules/VexiiRiscv/VexiiRiscv.v > $(VEXIIRISCV_SRC_DIR)/VexiiRiscv.v

vexiiriscv-help:
	cd submodules/VexiiRiscv && \
	sbt -java-home $(JDK_HOME) "runMain vexiiriscv.Generate --help"

#
# Clean
#
clean-vexiiriscv:
	rm -f $(VEXIIRISCV_SRC_DIR)/VexiiRiscv.v

clean-all: clean-vexiiriscv

.PHONY: vexiiriscv vexiiriscv-help clean-vexiiriscv clean-all
