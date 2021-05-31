; 8 BIT  AX/D8      Q=AL  R=AH

; 16 BIT DX,AX/D16  Q=AX  R=DX

    MOV AX,00FFH
    MOV BL,19H
    DIV BL
    
; 16 BIT
    
    MOV DX,1004H    ;10042004/1234
    MOV AX,2004H
    MOV CX,1234H
    DIV CX
    

 