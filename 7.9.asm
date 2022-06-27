.model small
.stack 100h
.code
main proc
         mov dh,8ah
         mov cl,2
         shr dh,cl
main endp
end main          