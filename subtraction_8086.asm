
;               SEGMENT REGISTER:OFFSET
;STACK SEGMENT  SS:SP/BP
;DATA SEGMENT   DS:DI/SI
;EXTRA SEGMENT  ES:DI/SI
;CODE SEGMENT   CS:IP

;LOGICAL ADDRESS SEGMENT REGISTRES ADDRESS : OFFSET ADDRESS
; PHYSICAL ADDRESS = SEGMENT REGISTER ADDRESS*10 + OFFSET 



MOV BX,1234H
MOV CX,4133H
SUB BX,CX
SBB BX,2508H

    
