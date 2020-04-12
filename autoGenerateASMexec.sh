#!/bin/bash


EXEC_FILE="$(echo $1 | sed 's/.\{4\}$//')"
echo $EXEC_FILE
OUT_FILE=$EXEC_FILE.o
echo $OUT_FILE
nasm -f elf32 $1
ld -m elf_i386 -o $EXEC_FILE $OUT_FILE
