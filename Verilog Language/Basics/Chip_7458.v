module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    wire w_p2ab,w_p2cd;
    assign w_p2ab=p2a&p2b;
    assign w_p2cd=p2c&p2d;
    assign p2y=w_p2ab|w_p2cd;
    
    wire w_p1abc,w_p1def;
    assign w_p1abc=p1a&p1b&p1c;
    assign w_p1def=p1d&p1e&p1f;
    assign p1y=w_p1abc|w_p1def;

endmodule
