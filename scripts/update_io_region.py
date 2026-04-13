#!/usr/bin/env python3
"""
Update IO region parameter defaults in VexiiRiscv Verilog.

This script modifies the IO_REGION_BASE and IO_REGION_SIZE parameter defaults
in an already-generated and parameterized Verilog file.

Usage:
    python3 update_io_region.py VexiiRiscv.v --io-base=80000000 --io-size=40000000

The script updates the file in-place.
"""

import argparse
import re
import os
import sys
import tempfile

def parse_args():
    parser = argparse.ArgumentParser(description='Update IO region defaults in Verilog')
    parser.add_argument('verilog_file', help='Path to Verilog file')
    parser.add_argument('--io-base', required=True, help='IO region base address (hex without 0x)')
    parser.add_argument('--io-size', required=True, help='IO region size (hex without 0x)')
    return parser.parse_args()

def validate_hex(value):
    """Validate hex value and return as lowercase hex string."""
    value = value.lower()
    if value.startswith('0x'):
        value = value[2:]
    try:
        int_val = int(value, 16)
        if int_val < 0 or int_val > 0xffffffff:
            raise ValueError(f"Value {value} out of 32-bit range")
        return format(int_val, '08x')
    except ValueError as e:
        raise argparse.ArgumentTypeError(f"Invalid hex value: {value}") from e

def update_io_region(filepath, io_base, io_size):
    """Update IO region parameter defaults in Verilog file."""
    
    # Read original file
    with open(filepath, 'r') as f:
        verilog = f.read()
    
    # Update IO_REGION_BASE parameter
    verilog = re.sub(
        r'(parameter \[31:0\] IO_REGION_BASE = )32\'h[0-9a-f]+',
        r"\g<1>32'h" + io_base,
        verilog
    )
    
    # Update IO_REGION_SIZE parameter
    verilog = re.sub(
        r'(parameter \[31:0\] IO_REGION_SIZE = )32\'h[0-9a-f]+',
        r"\g<1>32'h" + io_size,
        verilog
    )
    
    # Write back to file (atomic update)
    dir_path = os.path.dirname(filepath) or '.'
    with tempfile.NamedTemporaryFile(mode='w', dir=dir_path, delete=False) as tmp:
        tmp.write(verilog)
        tmp_path = tmp.name
    
    os.replace(tmp_path, filepath)

def main():
    args = parse_args()
    
    if not os.path.isfile(args.verilog_file):
        print(f"Error: File not found: {args.verilog_file}", file=sys.stderr)
        sys.exit(1)
    
    try:
        io_base = validate_hex(args.io_base)
        io_size = validate_hex(args.io_size)
        update_io_region(args.verilog_file, io_base, io_size)
        print(f"Updated IO region defaults: Base=0x{io_base}, Size=0x{io_size}")
    except Exception as e:
        print(f"Error: {e}", file=sys.stderr)
        sys.exit(1)

if __name__ == '__main__':
    main()
