`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
	
    wire w_ab,w_cd,w_or;
    assign w_ab=a&b;
    assign w_cd=c&d;
    assign w_or=w_ab|w_cd;
    assign out=w_or;
    assign out_n=~w_or;
endmodule
