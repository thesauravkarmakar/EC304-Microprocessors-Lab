// ADD GIVEN LIST OF 10 DATA BYTES
// STORE THE 16-BIT SUM IN MEMORY LOCATION
# ORG 0000H
	   LXI H, 2000H  // Store 3000H into HL pair 
	   MVI C, 0A // 0A -> 10 numbers
	   XRA A  // Initialize Accumulator with 00 (MVI A,00) 
	   MOV B,A // B -> For carry 
            
//XRA -> 1 byte instruction  >> MVI -> 2 byte instruction 

LOOP:	   ADD M 
	   JNC SKIP // If carry is not generated then don't increment B  
	   INR B
SKIP:	   INX H  
	   DCR C
	   JNZ LOOP 
	   STA 2050
	   MOV A,B
	   STA 2051
	   RST 1


# ORG 2000 // Memory address where value is to be stored
# DB 0A,FF,03,04,05,0A,02,03,0B,0F // Values