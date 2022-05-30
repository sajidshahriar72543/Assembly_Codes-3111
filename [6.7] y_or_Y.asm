	.model small
	.stack 100h
	.code
main proc
	
	         mov ah, 1
	         int 21h
	
	         cmp al, 'y'
	         je  then
	         cmp al, 'Y'
	         je  then
	         jmp end_if
	
	then:    
	         mov ah, 2
	         mov dl, al
	         int 21h
	         jmp end_case
	
	end_case:
	         mov ah, 4ch
	         int 21h
	
	end_if:  
	
main endp
	end main
