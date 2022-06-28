.MODEL SMALL
.STACK 100H
.CODE
.data
msg db "Enter String: $"
Sajid PROC 
    MOV AX, @data
    MOV DS, AX
    
    LEA BX, msg
    MOV AH, 9
    INT 21H
         
    xor cx,cx
    MOV AH,1
    INT 21H 
    
    wHILE_:
    CMP AL,0DH
    JE END_WHILE
    PUSH AX
    INC CX  
    
    INT 21H
    JMP WHILE_
    
    END_WHILE:
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    JCXZ EXIT
    
    TOP:
    POP DX
    INT 21H
    LOOP TOP

    EXIT:
    MOV AH,4CH
    INT 21H
    
    Sajid ENDP
END Sajid