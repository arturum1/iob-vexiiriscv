#!/usr/bin/env python3
"""
Update IO region parameters in existing VexiiRiscv Verilog.

This script modifies the IO_REGION_BASE and IO_REGION_END localparams
in an already-generated Verilog file.

Usage:
    python3 update_io_region.py VexiiRiscv.v --io-base=80000000 --io-size=40000000

The script updates the file in-place.
"""

import argparse
import re
import os
import tempfile

def parse_args():
    parser = argparse.ArgumentParser(description='Update IO region in Verilog')
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
        # Check it's a valid 32-bit address
        if int_val < 0 or int_val > 0xffffffff:
            raise ValueError(f"Value {value} out of 32-bit range")
        # Return lowercase hex without leading zeros for internal use
        return format(int_val, 'x')
    except ValueError as e:
        raise argparse.ArgumentTypeError(f"Invalid hex value: {value}") from e

def update_io_region(filepath, io_base, io_size):
    """Update IO region parameters in Verilog file."""
    
    # Normalize hex values
    io_base = validate_hex(io_base)
    io_size = validate_hex(io_size)
    
    # Format as 8-digit hex
    io_base_formatted = format(int(io_base, 16), '08x')
    io_end_formatted = format(int(io_base, 16) + int(io_size, 16), '08x')
    
    # Read original file
    with open(filepath, 'r') as f:
        verilog = f.read()
    
    # Update IO_REGION_BASE using a function to avoid escaping issues
    def replace_base(match):
        return f'{match.group(1)}32\'h{io_base_formatted};'
    
    verilog = re.sub(
        r'(localparam \[31:0\] IO_REGION_BASE = )32\'h[0-9a-f]+;',
        replace_base,
        verilog
    )
    
    # Update IO_REGION_END
    def replace_end(match):
        return f'{match.group(1)}32\'h{io_end_formatted};'
    
    verilog = re.sub(
        r'(localparam \[31:0\] IO_REGION_END = )32\'h[0-9a-f]+;',
        replace_end,
        verilog
    )
    
    # Write back to file (atomic update using temp file)
    dir_path = os.path.dirname(filepath) or '.'
    with tempfile.NamedTemporaryFile(mode='w', dir=dir_path, delete=False) as tmp:
        tmp.write(verilog)
        tmp_path = tmp.name
    
    os.replace(tmp_path, filepath)

def main():
    args = parse_args()
    
    # Validate file exists
    if not os.path.isfile(args.verilog_file):
        print(f"Error: File not found: {args.verilog_file}", file=sys.stderr)
        sys.exit(1)
    
    # Validate hex values
    try:
        io_base = validate_hex(args.io_base)
        io_size = validate_hex(args.io_size)
    except argparse.ArgumentTypeError as e:
        print(f"Error: {e}", file=sys.stderr)
        sys.exit(1)
    
    # Update
    try:
        update_io_region(args.verilog_file, io_base, io_size)
        io_base_formatted = format(int(io_base, 16), '08x')
        io_end_formatted = format(int(io_base, 16) + int(io_size, 16), '08x')
        io_size_formatted = format(int(io_size, 16), 'x')
        print(f"Updated IO region: 0x{io_base_formatted} - 0x{io_end_formatted} (size: 0x{io_size_formatted})")
    except Exception as e:
        print(f"Error updating file: {e}", file=sys.stderr)
        sys.exit(1)

if __name__ == '__main__':
    import sys
    main()
