section .text
	global ft_write

ft_write:		;write(int fd, const void *buf, size_t count) fd=rdi, buf=rsi, count=rdx
	mov rax,4	;move the syscall number to the rax register
	syscall		;call the interrupt
	ret			;results automatically stored in rax
