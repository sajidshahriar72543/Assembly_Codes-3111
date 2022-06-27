.model small
.stack 100h
.code
main proc
         mov ax,65143
         mov cl,2
         shr ax,cl
main endp
end main          