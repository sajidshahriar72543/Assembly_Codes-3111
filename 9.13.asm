; File Name: 9.13.asm
; Date: 2022-07-18
; Time: 15:15:01
; Author : Sajid Shahriar 
; github : sajidshahriar72543

.model small
.stack 100h
.data
xbyte db 22
.code
main proc

    mov al, xbyte
    cbw
    mov bl, -7
    idiv bl

    main endp
end main