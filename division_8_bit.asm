// DIVISION OF TWO 8 BIT NUMBERS
# ORG 0000H
	   MVI A,06
	   MVI B,04
	   MVI C,00
LOOP:	   CMP B
	   JC SKIP
	   SUB B
	   INR C
	   JMP LOOP
SKIP:	   RST 1
