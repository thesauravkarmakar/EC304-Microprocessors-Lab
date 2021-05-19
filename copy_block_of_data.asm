// COPY A BLOCK OF DATA BYTES
// FROM ONE MEMORY LOC TO ANOTHER MEMORY LOC
# BEGIN 0000H
	   MVI H,0A // 0A -> 10 numbers 
	   LXI B,1001
	   LXI D,2001

UP:	   LDAX B // Load data from BC pair to register A 
	   STAX D // Store data from A to memory 
	   INX B   // Increment location of BC register  
	   INX D  // Increment location of DE register 
	   DCR H
	   JNZ UP // Until H is zero, UP -> Loop back 
	   RST 1



# ORG 1001H // Memory address where value is to be stored
# DB 27,19,79,24,87,50,7,98,81,44 // Values
