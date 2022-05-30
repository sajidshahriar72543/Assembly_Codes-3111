	.model small
	.stack 100h
	.code
	
	str       db   "test", 0dh, 0ah
	
main proc
	
	          mov  ah, 1
	          int  21h
	
	          cmp  al, 'A'
	          jnge end_case1
	          cmp  al, 'Z'
	          jnle end_case1
	
	
	          cmp  al, 'a'
	          jnge end_case2
	          cmp  al, 'b'
	          jnle end_case2
	
	
	end_case2:
	          lea  dx, str
	          mov  ah, 9
	          int  21h
	
	end_case1:
	          mov  ah, 4ch
	          int  21h
	
	
main endp
	end main
