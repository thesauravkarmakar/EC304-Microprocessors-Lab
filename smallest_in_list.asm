// FIND SMALLEST NUM OF GIVEN NUMBERS
# ORG 2000H
	   LXI H,2070
	   MVI C,05	// No of data is five
	   MVI A,05
	   DCR C

LOOP:	   INX H
	   MOV B,M
	   CMP B
	   JC SKIP
	   MOV A,B
// CMP
// A < B CY 1
// A = B CY 0
// A > B CY 0

SKIP:	   DCR C
	   JNZ LOOP
	   STA 3000
	   RST 1
# ORG 2070
# DB 05,02,0F,04,10
