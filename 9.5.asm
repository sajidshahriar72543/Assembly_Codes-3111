; File Name: 9.5.asm
; Date: 2022-07-18
; Time: 14:58:12
; Author : Sajid Shahriar 
; github : sajidshahriar72543

.model small
.stack 100h
; .data
.code
main proc

    mov al, 80h
    mov bl, 0ffh

    mul bl
    ; imul bl

    end:
    mov ah, 4ch
    int 21h

    main endp
end main