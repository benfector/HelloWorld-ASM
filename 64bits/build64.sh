#!/bin/bash

echo "[+] Limpando.."
rm *.o 2>/dev/null
rm 64 2>/dev/null

echo "[+] Montando.."
nasm -f elf64 hello64bits.asm -o 64bits.o

echo "[+] Linkando.."
ld -m elf_x86_64 64bits.o -o 64

echo "[+] Executando.."
./64