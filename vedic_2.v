// 2-bit vedic multiplier
module vedic_2(a,b,c);
input [1:0]a,b;
output [3:0]c;
//result generation 
assign c[0] =  a[0]&b[0];
assign c[1] = (a[1]&b[0])^(a[0]&b[1]);
assign c[2] = ((a[0]&b[1])&(a[1]&b[0]))^(a[1]&b[1]);
assign c[3] = (a[1]&b[1])&((a[0]&b[1])&(a[1]&b[0]));
endmodule
