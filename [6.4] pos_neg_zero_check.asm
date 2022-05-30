	.model small
	.stack 100h
	.code
main proc
	
	         mov ax, - 2h
	
	         cmp ax, 0h
	
	         jl  ngtv
	         je  zro
	         jg  pstv
	
	ngtv:    
	         mov bx, - 1h
	         jmp end_case
	
	zro:     
	         mov bx, 0
	         jmp end_case
	
	pstv:    
	         mov bx, 1
	
	end_case:
	         mov ah, 4ch
	         int 21h
	
main endp
	end main
