.model small
.stack 100h
.code
main proc
         mov al,10000111b
         and al,7fh
main endp
end main