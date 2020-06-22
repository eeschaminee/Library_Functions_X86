section .text
	global ft_read

ft_read:		;read(int fd, void *buf, size_t count) fd=rdi, buf=rsi, count=rdx
	mov rax,3	;move the syscall number to the rax register
	syscall		;call the interrupt
	ret			;results automatically stored in rax
