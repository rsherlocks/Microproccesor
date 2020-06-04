.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC

    MOV AH,1
    INT 21H
    
    CMP AL,'y'
    JE THEN
    CMP AL,'Y'
    JE THEN
    JMP ELSE_ 
     
    THEN:
     
    MOV DL,AL 
    MOV AH,2
    INT 21H
    
    ELSE_:
    MOV AH,4CH
    INT 21H
    
    END_IF:
    MOV AH,4CH
    INT 21H
    
    
    MAIN ENDP
END MAIN

