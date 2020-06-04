.MODEL SMALL
.STACK 100H 
.DATA
.CODE
  MAIN PROC 
      
      MOV AH,1
      INT 21H          ;INPUT
      MOV BL,AL
       
       MOV AH,2
       MOV DL,0AH       ;NEWLINE
       INT 21H
       MOV DL,0DH
       INT 21H
       
       MOV DL,BL
       INT 21H         ;OUTPUT
       
       
       MOV AH,4CH
       INT 21H
       MAIN ENDP
       END MAIN
      