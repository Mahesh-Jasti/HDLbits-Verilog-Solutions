module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    genvar i;
    wire [99:0] cout_temp;
    generate
        bcd_fadd inst1 (.a(a[3:0]),.b(b[3:0]),.cin(cin),.cout(cout_temp[0]),.sum(sum[3:0]));
        for(i=4;i<400;i=i+4) begin: inst
            bcd_fadd inst (.a(a[i+3:i]),.b(b[i+3:i]),.cin(cout_temp[i/4-1]),.cout(cout_temp[i/4]),.sum(sum[i+3:i]));
        end
        assign cout=cout_temp[99];
    endgenerate
    
endmodule
