module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire carry_sel;
    wire [1:0] trash;
    wire [15:0] sum_c0,sum_c1;
    add16 LSBadder (.a(a[15:0]),.b(b[15:0]),.cin(1'b0),.sum(sum[15:0]),.cout(carry_sel));
    add16 MSBadder_c0 (.a(a[31:16]),.b(b[31:16]),.cin(1'b0),.sum(sum_c0),.cout(trash[0]));
    add16 MSBadder_c1 (.a(a[31:16]),.b(b[31:16]),.cin(1'b1),.sum(sum_c1),.cout(trash[0]));
    always @(*) begin
        case(carry_sel)
            1'b0: sum[31:16]=sum_c0;
            1'b1: sum[31:16]=sum_c1;
        endcase
    end
    
endmodule
