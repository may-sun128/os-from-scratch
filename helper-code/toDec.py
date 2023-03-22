#!/usr/bin/python
import sys 

base = sys.argv[1]
hex_or_bin: str = sys.argv[2]

if base == '-h':
    hex_val = int(hex_or_bin, 16)
    print(hex_val)
elif base == '-b':
    bin_val = int(hex_or_bin, 2)
    print(bin_val)


