

.MODEL SMALL
.STACK 100H
.DATA
M1 DB 'Type a line of text',0DH,0AH,'$'
M2 DB 0DH,0AH,'No capital $'
M3 DB 0DH,0AH,'First capital = '
FIRST DB ']'
      DB '  Last capital = '
LAST DB '@ $'

.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,M1
    INT 21H
    
    MOV AH,1
    INT 21H
    
WHILE_:

    CMP AL,0DH
    JE END_WHILE
    
    CMP AL,'A'
    JNGE END_IF
    CMP AL,'Z'
    JNLE END_IF
    
    CMP AL,FIRST
    JNL CHECK_LAST
    
    MOV FIRST,AL
    
CHECK_LAST:
    
    CMP AL,LAST
    JNG END_IF
    
    MOV LAST,AL
    
END_IF:
    
    INT 21H
    JMP WHILE_

END_WHILE:

    MOV AH,9
    CMP FIRST,']'
    JNE CAPS
    
    LEA DX,M2
    JMP DISPLAY

CAPS:

    LEA DX,M3
    
DISPLAY:

    INT 21H
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN





