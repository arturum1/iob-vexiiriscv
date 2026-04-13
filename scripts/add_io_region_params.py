#!/usr/bin/env python3
"""
Add IO region parameters to VexiiRiscv Verilog.

This script:
1. Adds parameter declarations for IO_REGION_BASE and IO_REGION_SIZE
2. Adds localparam for IO_REGION_END after the port list
3. Replaces hardcoded bit-mask logic with parameterized comparison

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
    io_size_formatted = format(int(io_size, 16), '08x')
    
    # Define parameters to be inserted into the module header
    params = f"""#(
  parameter [31:0] IO_REGION_BASE = 32'h{io_base_formatted},
  parameter [31:0] IO_REGION_SIZE = 32'h{io_size_formatted}
) """
    
    # Insert parameters before the port list
    # Matches "module VexiiRiscv ("
    verilog = re.sub(
        r'(module VexiiRiscv )\s*\(',
        r'\1' + params + r'(',
        verilog
    )

    # Add localparam for END after the module's port list closing ");"
    localparam_end = """
  localparam [31:0] IO_REGION_END = IO_REGION_BASE + IO_REGION_SIZE;
"""
    
    # We look for the first ");" that appears after "module VexiiRiscv"
    # and insert the localparam immediately after it.
    pattern = r'(module VexiiRiscv.*?\);)'
    verilog = re.sub(
        pattern,
        r'\1' + localparam_end,
        verilog,
        count=1,
        flags=re.DOTALL
    )
    
    # Replace FetchL1Plugin IO check (instruction fetch)
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
