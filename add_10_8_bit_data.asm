// ADD GIVEN LIST OF 10 DATA BYTES
// STORE THE 8-BIT SUM IN MEMORY LOCATION
# ORG 0000H
	   LXI H, 2000H  // Store 3000H into HL pair 
	   MVI C, 0A // 0A -> 10 numbers
	   XRA A  // Initialize Accumulator with 00 (MVI A,00) 
            
//XRA -> XOR operation between source   operand and destination operand  and store the result in the accumulator Here, source and destination operand both are same => Therefore, the result after performing XOR operation, stored in the accumulator is 00

LOOP:	   ADD M 
	   INX H  
	   DCR C
	   JNZ LOOP // Until C is zero, LOOP -> Loop back 
	   STA 2050
	   RST 1


# ORG 2000 // Memory address where value is to be stored
# DB 01,02,03,04,05,01,02,03,04,01 // Values