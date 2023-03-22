#!/usr/bin/python

import sys 

base = sys.argv[1]
number = int(sys.argv[2])

if base == '-h':
    print(hex(number))
elif base == '-b':
    print(bin(number)[2:])
