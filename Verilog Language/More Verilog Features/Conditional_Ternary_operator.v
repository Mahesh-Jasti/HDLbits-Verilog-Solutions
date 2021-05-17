module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    wire [7:0] min_ab,min_cd;
    assign min_ab=(a>b)? b:a;
    assign min_cd=(c>d)? d:c;
    assign min=(min_ab>min_cd)? min_cd:min_ab;

endmodule
