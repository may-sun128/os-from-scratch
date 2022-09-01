#!/usr/bin/bash 

rm t.bin 
nasm -f bin t.asm -o t.bin
qemu-system-x86_64 t.bin 
