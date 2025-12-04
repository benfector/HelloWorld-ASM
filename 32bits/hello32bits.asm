section .data
; 'define byte' 'Quebra de linha(\n)'
HELLO: db "Ola!", 0x0a
; Tamanho. Endereco atual - endereco do primeiro byte de HELLO('O') = tamanho total de bytes da string
TAMANHO_HELLO: equ $ - HELLO 

section .text
global _start
_start:
    ;registradores de 32 bits
    mov eax, 4  ; numero da syscall: 4 = write
    mov ebx, 1	; file descriptor 1 = stdout
    mov ecx, HELLO 	; ponteiro para string a escrever
    mov edx, TAMANHO_HELLO 	; tamanho da string em bytes
    int 0x80    ; chama syscall do linux

    ; exit(0)
    mov eax, 1  ; numero da syscall: 1 = exit
    mov ebx, 0  ; numero de saida = 0  
    int 0x80    
