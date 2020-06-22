section .text
	global ft_strlen

ft_strlen:						;ft_strlen(char *s) *s = rdi
	xor rax,rax					;set rax (return value) to zero
	cmp rdi,0					;null pointer check
	je exit

while:
	cmp BYTE [rdi + rax],0		;check if rdi (string) is empty
	je exit						;equal = null character
	inc rax						;increment rax (return value)
	jmp while

exit:
	ret
