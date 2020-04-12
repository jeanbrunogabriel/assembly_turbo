#!/bin/bash

#Variável que guarda o nome sem a extensão .asm
EXEC_FILE="$(echo $1 | sed 's/.\{4\}$//')"

#Variável com a extensão .o
OUT_FILE=$EXEC_FILE.o

#Cria o arquivo .o (output)
nasm -f elf32 $1

#Cria arquivo executável (EXEC_FILE)
ld -m elf_i386 -o $EXEC_FILE $OUT_FILE

#Executa o arquivo criado
./$EXEC_FILE
