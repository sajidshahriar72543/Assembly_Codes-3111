; File Name: 9.10.asm
; Date: 2022-07-18
; Time: 15:10:44
; Author : Sajid Shahriar 
; github : sajidshahriar72543

.model small
.stack 100h
; .data
.code
main proc

    mov dx, 0ffffh
    mov ax, 0fffbh

    idiv dx
    ;div dx

    end:
    mov ah, 4ch
    int 21h

    main endp
end main