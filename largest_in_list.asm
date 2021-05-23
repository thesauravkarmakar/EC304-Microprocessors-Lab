// FIND LARGEST NUM OF GIVEN NUMBERS
# ORG 2000H
	   LXI H,2070
	   MVI C,05	// No of data is five
	   XRA A

LOOP:	   MOV B,M
	   CMP B	// B is compared with A
	   JNC SKIP	// CY (Carry Flag) is not set if B < A
	   MOV A,B
// CMP
// A < B CY 1
// A = B CY 0
// A > B CY 0

SKIP:	   INX H
	   DCR C
	   JNZ LOOP
	   STA 3000
	   RST 1
# ORG 2070
# DB 05,01,0F,08,10
