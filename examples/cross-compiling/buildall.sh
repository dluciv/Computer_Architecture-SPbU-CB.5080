#!/bin/bash

rm err.txt

COLOR_OPTION=--disassembler-color=on
# RV=riscv64-linux-gnu
RV=riscv64-elf
MP=mips64-elf

gcc             -m32          -g -c     -o cce_X86.o          cce.c 2>>err.txt
objdump -DSw -M i386,intel               1>oce_X86.s      cce_X86.o 2>>err.txt
objdump -DSw -M i386,intel $COLOR_OPTION 1>oce_X86.ANSI.s cce_X86.o 2>>err.txt

"${RV}-gcc"     -march=rv64g  -g -c      -o cce_RSV.o         cce.c 2>>err.txt
"${RV}-objdump" -DSw                      1>oce_RSV.s     cce_RSV.o 2>>err.txt

"${MP}-gcc"     -march=mips64 -g -c     -o cce_MPS.o          cce.c 2>>err.txt
"${MP}-objdump" -DSw                     1>oce_MPS.s      cce_MPS.o 2>>err.txt
"${MP}-objdump" -DSw       $COLOR_OPTION 1>oce_MPS.ANSI.s cce_MPS.o 2>>err.txt
