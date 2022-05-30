	.model small
	.stack 100h
	.code
	
main proc
	
	          mov  ah, 1
	          int  21h
	
	          cmp  al, 'A'
	          jnge end_case1
	          cmp  al, 'Z'
	          jnle end_case1
	
	          mov  dl, al
	          mov  ah, 2
	          int  21h
	
	end_case1:
	          mov  ah, 4ch
	          int  21h
	
	end_case2:
	
	
main endp
	end main
