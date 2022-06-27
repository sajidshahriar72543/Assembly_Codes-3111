.model small
.stack 100h
.code
main proc
          mov  al,11010111b
          test al,1
          jz   below
          mov  bl,0ffh
    below:
main endp
end main          