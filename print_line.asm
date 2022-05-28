.model small
.stack 100h
.data

str db "ECE_RUET", 0dh, 0ah
str1 db "Sajid$"

.code
main proc

mov ax, @data
mov ds, ax

lea dx, str 
mov ah, 09H
int 21h   
  
lea dx, str1    
mov ah, 09H
            
main endp
end main