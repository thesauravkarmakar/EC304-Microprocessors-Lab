// SUB TWO 8 BIT NUMBER
// (ii) Store result at memory location 2000H
# BEGIN 0000H
	   MVI A,50
	   MVI B,30
	   SUB B
	   STA 2000
	   RST 1
