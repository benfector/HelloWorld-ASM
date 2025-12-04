#!/bin/bash

echo "[+] Limpando.."
rm *.o 2>/dev/null
rm 32 2>/dev/null

echo "[+] Montando.."
nasm -f elf32 hello32bits.asm -o 32bits.o

echo "[+] Linkando.."
ld -m elf_i386 32bits.o -o 32

echo "[+] Executando.."
./32