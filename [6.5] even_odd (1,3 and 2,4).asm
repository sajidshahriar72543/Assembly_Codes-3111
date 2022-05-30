	.model small
	.stack 100h
	.code
main proc
	
	         mov al, 2
	
	         cmp al, 1
	         je  odd
	         cmp al, 3
	         je  odd
	
	         cmp al, 2
	         je  even
	         cmp al, 4
	         je  even
	
	         jmp end_case
	
	odd:     
	         mov dl, 'o'
	         jmp disp
	
	even:    
	         mov dl, 'e'
	
	disp:    
	         mov ah, 2h
	
	end_case:
	         mov ah, 4ch
	         int 21h
	
main endp
	end main
