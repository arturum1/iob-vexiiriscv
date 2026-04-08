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
# - L1 caches for both fetch and LSU
# - Memory regions:
#   - 0x00000000-0x7FFFFFFF: Cached (main)
#   - 0x80000000-0xBFFFFFFF: Uncached (IO)
#   - 0xC0000000-0xFFFFFFFF: Cached (main)
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
	--lsu-l1 \
	--fetch-axi4 \
	--lsu-l1-axi4 \
	--with-btb \
	--with-gshare \
	--with-ras

# Primary targets
vexiiriscv:
	# Run sbt to build CPU and copy generated verilog to this repo
	cd submodules/VexiiRiscv && \
	sbt "runMain vexiiriscv.Generate $(PARAMS)" && \
	mkdir -p $(VEXIIRISCV_SRC_DIR) && \
	cp VexiiRiscv.v $(VEXIIRISCV_SRC_DIR)/

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
