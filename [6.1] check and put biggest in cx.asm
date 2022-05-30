	.model small
	.stack 100h
	.code
main proc
		
	     mov ax, 20h
	     mov bx, 25h
	
	     mov cx, ax
	     cmp bx, cx
	     jle next
	     mov cx, bx
	
	next:
	     mov ah, 4ch
	     int 21h
	
main endp
	end main
