.MODEL SMALL
.STACK 100H
.DATA
 
.CODE

MAIN PROC
 
    XOR AX,AX
    MOV CX,0
    MOV BX,0000000000000011B
    TOP:
       CMP CX,16
       JE END_
     
       INC CX
     
       ROL BX,1
       JNC NEXT
       INC AX
    NEXT:
        JMP TOP
 
    END_:
    ADD AX,30H  
    MOV AH,2
    MOV DX,AX
    INT 21H
                 
    MOV AH,4CH
    INT 21H  
   
    MAIN ENDP
END MAIN