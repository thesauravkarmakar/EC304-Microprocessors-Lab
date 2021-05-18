// ADD TWO 8 BIT NUMBER
// (i) Store result at output port 10H
# BEGIN 0000H
	   MVI A,20
	   MVI B,30
	   ADD B
	   OUT 10
	   RST 1
