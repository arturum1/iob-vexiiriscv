# SPDX-FileCopyrightText: 2025 IObundle
#
# SPDX-License-Identifier: MIT

JDK_HOME := $(shell dirname $$(dirname $$(which java)))

# Linux-compatible VexiiRiscv configuration with AXI4 interfaces
# - 32-bit RISC-V with supervisor mode (required for Linux)
# - 3 AXI4 buses: iBus (fetch), dBus (LSU cached), ioBus (LSU uncached)
# - Memory regions (compile-time configuration):
#   - 0x00000000-0x7FFFFFFF: Cached (main)
#   - 0x80000000-0xBFFFFFFF: Uncached (IO)
#   - 0xC0000000-0xFFFFFFFF: Cached (main)
#
# Usage:
#   make                  - Build with L1 data cache (3 buses)
#   make USE_CACHE=0      - Build without L1 data cache (2 buses)
#
# Note: To change memory regions or reset vector, modify the PARAMS below
# and rebuild. The IO region is hardcoded in hardware at generation time.

# Set USE_CACHE=0 to generate without L1 data cache
USE_CACHE ?= 1

# Reset vector and region configuration
# Note: Values should be hex without 0x prefix for VexiiRiscv
RESET_VECTOR ?= 40000000
IO_REGION_BASE ?= 80000000
IO_REGION_SIZE ?= 40000000

PARAMS ?= \
        --xlen=32 \
        --reset-vector=$(RESET_VECTOR) \
        --region base=0,size=80000000,main=1,exe=1 \
        --region base=$(IO_REGION_BASE),size=$(IO_REGION_SIZE),main=0,exe=1 \
        --region base=c0000000,size=40000000,main=1,exe=1 \
        --with-rvm \
        --with-rva \
        --with-rvc \
        --with-rvZb \
        --with-rvZcbm \
        --with-supervisor \
        --fetch-l1 \
        --fetch-axi4 \
        --with-btb \
        --with-gshare \
        --with-ras \
        --performance-counters 4
#       --with-user is implied by --with-supervisor
#       --with-mul is implied by --with-rvm

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
	cp hardware/spinalhdl/PcPlugin.scala submodules/VexiiRiscv/src/main/scala/vexiiriscv/fetch/PcPlugin.scala
	cd submodules/VexiiRiscv && \
	nix-shell ../../spinalhdl_shell.nix --run 'sbt "runMain vexiiriscv.Generate $(PARAMS)"'
	mkdir -p hardware/src
	sed -e 's/FetchL1Axi4Plugin_logic_axi_/iBusAxi_/g' \
	    -e 's/LsuL1Axi4Plugin_logic_axi_/dBusAxi_/g' \
	    -e 's/LsuCachelessAxi4Plugin_logic_axi_/ioBusAxi_/g' \
	    -e 's/_payload_//g' \
	    -e 's/_valid/valid/g' \
	    -e 's/_ready/ready/g' \
	    submodules/VexiiRiscv/VexiiRiscv.v | \
	python3 scripts/add_io_region_params.py --io-base=$(IO_REGION_BASE) --io-size=$(IO_REGION_SIZE) > hardware/src/VexiiRiscv.v
	@echo "Generated VexiiRiscv with:"
	@echo "  - Reset vector: 0x$(RESET_VECTOR)"
	@echo "  - IO region: 0x$(IO_REGION_BASE) - 0x$$(printf '%x' $$((0x$(IO_REGION_BASE)+0x$(IO_REGION_SIZE))))"
	@echo "  - USE_CACHE=$(USE_CACHE)"

# Update IO region in existing Verilog (without regenerating from SpinalHDL)
# Usage: make update-io-region IO_REGION_BASE=80000000 IO_REGION_SIZE=40000000
update-io-region:
	python3 scripts/update_io_region.py \
	    hardware/src/VexiiRiscv.v \
	    --io-base=$(IO_REGION_BASE) \
	    --io-size=$(IO_REGION_SIZE)
	@echo "Updated IO region to:"
	@echo "  - IO region: 0x$(IO_REGION_BASE) - 0x$$(printf '%x' $$((0x$(IO_REGION_BASE)+0x$(IO_REGION_SIZE))))"

vexiiriscv-help:
	cd submodules/VexiiRiscv && \
	nix-shell ../../spinalhdl_shell.nix --run 'sbt -java-home $(JDK_HOME) "runMain vexiiriscv.Generate --help"'

clean-vexiiriscv:
	rm -f hardware/src/VexiiRiscv.v

clean-submodules:
	git submodule foreach --recursive git clean -ffdx

.PHONY: vexiiriscv vexiiriscv-help clean-vexiiriscv clean-submodules
