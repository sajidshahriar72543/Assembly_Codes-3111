.model small
.stack 100h
.data
var db 0Dh, 0ah
char db ?, '$' 
s db ?, '$'

.code
main proc 

MOV AX, @data
mov ds, ax   
    
mov ah, 1
int 21h
sub al, 20h
mov char, al 

MOV AH, 9
INT 21H  

lea dx, var

       
mov ah, 1
int 21h
add al, 20h
mov char, al 

MOV AH, 9
INT 21H
            
main endp
end main