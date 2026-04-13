#!/usr/bin/env python3
"""
Add IO region parameters to VexiiRiscv Verilog.

This script:
1. Adds localparam declarations for IO_BASE and IO_SIZE
2. Replaces hardcoded bit-mask logic with parameterized comparison

Usage:
    cat input.v | python3 add_io_region_params.py --io-base=80000000 --io-size=40000000 > output.v
"""

import argparse
import re
import sys

def parse_args():
    parser = argparse.ArgumentParser(description='Add IO region parameters to Verilog')
    parser.add_argument('--io-base', required=True, help='IO region base address (hex without 0x)')
    parser.add_argument('--io-size', required=True, help='IO region size (hex without 0x)')
    return parser.parse_args()

def add_io_region_params(verilog, io_base, io_size):
    """Add IO region parameters and replace hardcoded logic."""
    
    # Convert to 32-bit hex with 0x prefix
    io_base_formatted = format(int(io_base, 16), '08x')
    io_end_formatted = format(int(io_base, 16) + int(io_size, 16), '08x')
    
    # Add localparams after module declaration
    localparams = f"""// IO region configuration (can be updated with update_io_region.py)
  localparam [31:0] IO_REGION_BASE = 32'h{io_base_formatted};
  localparam [31:0] IO_REGION_END = 32'h{io_end_formatted};
"""
    
    # Insert localparams after "module VexiiRiscv ("
    verilog = re.sub(
        r'(module VexiiRiscv \(\n)',
        r'\1' + localparams,
        verilog
    )
    
    # Replace FetchL1Plugin IO check (instruction fetch)
    # Original: (addr & 0x40000000) == 0x40000000) || (addr & 0x80000000) == 0
    # New: addr >= IO_REGION_BASE && addr < IO_REGION_END
    verilog = re.sub(
        r'(_zz_FetchL1Plugin_logic_ctrl_pmaPort_rsp_io = )\(\|\{[^}]+\}\);',
        r'\1((FetchL1Plugin_pmaBuilder_addressBits >= IO_REGION_BASE) && (FetchL1Plugin_pmaBuilder_addressBits < IO_REGION_END));',
        verilog
    )
    
    # Replace LsuPlugin IO check (load/store to IO bus)
    verilog = re.sub(
        r'(_zz_LsuPlugin_logic_onPma_io_rsp_io = )\(\|\{[^}]+\}\);',
        r'\1((LsuPlugin_pmaBuilder_io_addressBits >= IO_REGION_BASE) && (LsuPlugin_pmaBuilder_io_addressBits < IO_REGION_END));',
        verilog
    )
    
    # Replace LsuPlugin cached fault check (load/store to L1 cache)
    # This checks if address is in a cached region - simplified to: is_io && transfers_hit
    verilog = re.sub(
        r'(LsuPlugin_logic_onPma_cached_rsp_fault = )\(\! \(\(\|\{[^}]+\}\) && \(\|LsuPlugin_pmaBuilder_l1_onTransfers_0_hit\)\)\);',
        r'\1(((LsuPlugin_pmaBuilder_l1_addressBits >= IO_REGION_BASE) && (LsuPlugin_pmaBuilder_l1_addressBits < IO_REGION_END)) && (|LsuPlugin_pmaBuilder_l1_onTransfers_0_hit));',
        verilog
    )
    
    return verilog

def main():
    args = parse_args()
    
    # Read from stdin
    verilog = sys.stdin.read()
    
    # Process
    result = add_io_region_params(verilog, args.io_base, args.io_size)
    
    # Write to stdout
    print(result, end='')

if __name__ == '__main__':
    main()
