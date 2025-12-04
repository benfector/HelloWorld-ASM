section .data
; 'define byte' 'Quebra de linha(\n)'
HELLO: db "Ola mundo!", 0xA ; label HELLO
; Tamanho. Endereco atual - endereco do primeiro byte de HELLO('O') = tamanho total de bytes da string
TAMANHO_STRING: equ $ - HELLO

section .text
global _start
_start:
	; registradores de 64 bits
	mov rax, 1	; numero da syscall: 1 = write
	mov rdi, 1	; file descriptor 1 = 'stdout'
	mov rsi, HELLO	; ponteiro para string
	mov rdx, TAMANHO_STRING	 ; tamanho da string	
	syscall	; chama syscall do linux

	;exit(0)
	mov rax, 60	; numero da syscall: 60 = exit
	xor rdi, rbx	; codigo de saida
	;mov rdi, 0
	syscall

