// SORT GIVEN LIST IN ASCENDING ORDER
# ORG 2000H
	   LXI H,3000
	   MOV C,M	// C -> Count of total numbers
	   DCR C

DOPASS:	   LXI H,3001
	   MOV D,C

CHECK:	   MOV A,M
	   INX H
	   MOV B,M
	   DCX H
	   CMP B
	   JC NOSWAP  // JC -> Ascending 
	   MOV M,B
	   INX H
	   MOV M,A
	   DCX H

NOSWAP:	   INX H
	   DCR D
	   JNZ CHECK
	   DCR C
	   JNZ DOPASS
	   RST 1
# ORG 3000
# DB 06,08,10,07,04,02,09
