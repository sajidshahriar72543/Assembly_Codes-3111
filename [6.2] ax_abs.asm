	.model small
	.stack 100h
	.code
main proc
	
	       mov ax, - 2h
	
	       cmp ax, 0
	       jnl end_if
	       neg ax
	end_if:
	
	next:  
	       mov ah, 4ch
	       int 21h
	
main endp
	end main
