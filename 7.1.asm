.model small
.stack 100h
.code
main proc
         mov ax, 10101010b
         mov bx, 11110000b
         and bx,ax
         mov ax, 10101010b
         mov bx, 11110000b
         or  bx,ax
         mov ax, 10101010b
         mov bx, 11110000b
         xor bx,ax
         mov dx, 10101010b
         not dx
main endp
end main