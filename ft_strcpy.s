section .text
	global ft_strcpy
	extern ft_strlen

ft_strcpy:					;ft_strcpy(char *dest, const char *src) rdi = dest, rsi = src
	xor rax,rax				;clear rax
	xor rbx,rbx				;clear rbx
	cmp rsi,0				;null pointer check
	je exit
	cmp rdi,0				;null pointer check
	je exit

while:
	cmp BYTE [rsi + rax],0	;check if not null terminated
	je exit					;exit if null terminated
	mov rbx,[rsi + rax]		;copy rsi to rbx
	mov [rdi + rax],rbx		;mov rsi(rbx) to rdi
	inc rax					;increment rax
	jmp while

exit:
	mov rax,rdi				;return pointer dest (stored in rdi)
	ret
