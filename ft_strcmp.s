section .text
	global ft_strcmp

ft_strcmp:				;ft_strcmp(const char *s1, const char *s2) s1=rdi, s2=rsi
	xor rax,rax				;clear rax
	xor rbx,rbx				;clear rbx
	cmp rsi,0				;null pointer check
	je exit
	cmp rdi,0				;null pointer check
	je exit

while:
	mov al, BYTE [rdi]		;store char s1 (rdi) in al
	mov bl, BYTE [rsi]		;store char s2 (rsi) in bl
	cmp al,0				;check if not null terminated
	je exit					;exit if null terminated
	cmp bl,0				;check if not null terminated
	je exit					;exit if null terminated
	cmp al,bl				;compare char s1(al) with char s2(bl)
	jne exit				;exit if not equal
	inc rdi					;increment pointer
	inc rsi					;increment pointer
	jmp while

exit:
	movzx rax,al			;mov zero extend (unsigned)
	movzx rbx,bl
	sub rax,rbx				;s1 (rdi(rax)) - s2 (rsi(rbx))
	ret
