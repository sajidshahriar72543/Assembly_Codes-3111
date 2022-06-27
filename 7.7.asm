.model small
.stack 100h
.code
main proc
         mov dh,8ah
         mov cl,3
         shl dh,cl
main endp
end main          