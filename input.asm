SYS_EXIT  equ 1
RET_EXIT  equ 5
SYS_READ  equ 3
SYS_WRITE equ 4
STD_IN    equ 0
STD_OUT   equ 1
MAX_IN    equ 10

segment .data
	msg db "Entre com seu nome: ", 0xA, 0xD
	len equ $ - msg


segment .bss
	nome resb 2


global _start

segment .text

_start:
        
	; eax = Acumulador para operações numéricas
	; ebx = Acumulador de registro base
	; ecx = Registro de conta ( por operações com String )
	; edx = Registro de dados ( Como por exemplo, o tamanho da dado de uma String )

	; OBS: quando se usa "e" no começo das funções, estamos indicando que serve para arquitetura 32 e 64 bits
	; já quando usamos apenas o "r", estamos indicando que serve apenas para a arquitetura 64 bits
	
	mov eax, SYS_WRITE
	mov ebx, STD_OUT
	mov ecx, msg
	mov edx, len
	int 0x80

	; Entrada de Dados
	
	mov eax, SYS_READ
	mov ebx, STD_IN
	mov ecx, nome
	mov edx, MAX_IN
	int 0x80

        ; Mostrar o Nome
	mov eax, SYS_WRITE
	mov ebx, STD_OUT
	mov ecx, nome
	mov edx, MAX_IN
	int 0x80


        ; Saída do Programa
	mov eax, SYS_EXIT
	mov ebx, RET_EXIT
	int 0x80





