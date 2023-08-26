// Converts code point to UTF-8 bytes.
// x {byte|byte[]} Code point.
// {byte[]} UTF-8 bytes.
cp2b:{
	$[-1=n:128 2048 65536 1114112 bin 256 sv x,:();x;
		0=n;0b sv'(110b,(-3#b 0),2#l;10b,-6#l:last b:0b vs'-2#0x0,x);
		1=n;0b sv'(1110b,4#b 0;10b,(-4#b 0),2#l;10b,-6#l:last b:0b vs'x);
		2=n;0b sv'(11110b,b[0;3 4 5];10b,(-2#b 0),4#b 1;10b,(-4#b 1),2#l;10b,-6#l:last b:0b vs'x);
		'"domain"]}
