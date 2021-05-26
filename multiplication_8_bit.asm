// MULTIPLICATION OF TWO 8 BIT NUMBERS 
#ORG 2000H
	LDA 3000 // Move contents from memory to accumulator 
	MOV C,A 
	MVI D,00
	LDA 3001
	MOV E,A 	 // 2 + 2 + 2 + 2 
	LXI H,0000
RPT: 	DAD D	 // 0000H + DE(0002H)
	DCR C 	// 4 -> 3 -> 2 -> 1 -> 0
	JNZ RPT
	SHLD 3050
	RST 1

#ORG 3000
#DB 04,02