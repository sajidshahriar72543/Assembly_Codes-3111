.model small
.stack 100h
.code
main proc
    MOV AH,1
    REPEAT: INT 21H

    CMP AL,' '
    JNE REPEAT 
    
    end:
    mov ah, 4ch
    int 21h
    main endp
end main
