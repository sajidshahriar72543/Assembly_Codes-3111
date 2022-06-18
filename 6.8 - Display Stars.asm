  .model small
  .stack 100h
  .data
  main proc



MOV CX,80
MOV AH,2
MOV DL,'*'

TOP:
INT 21H
LOOP TOP
mov ah,4ch
int 21h
main endp 

end main