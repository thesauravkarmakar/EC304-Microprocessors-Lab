; 8 BIT  D8*AL   =    AX

; 16 BIT D16*AX  =    DX AX

    MOV AL,14H
    MOV BL,4H
    MUL BL
    
; 16 BIT
    
    MOV AX,1234H    ;1234*45F4
    MOV BX,45F4H
    MUL BX
    

 