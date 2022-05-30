	.model small
	.stack 100h
	.code
main proc
	
	        mov  ah, 2h
	
	        mov  al, 3h
	        mov  bl, 20h
	
	        cmp  al, bl
	        jnbe else_
	
	        mov  dl, al
	        jmp  display
	
	else_:  
	        mov  dl, bl
	
	display:
	        int  21h
	
	end_if: 
	
	
main endp
	end main
