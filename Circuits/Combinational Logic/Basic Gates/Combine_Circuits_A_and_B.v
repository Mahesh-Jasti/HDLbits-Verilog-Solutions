module top_module (input x, input y, output z);

    wire z1,z2,z3,z4,z12,z34;
    mt2015_q4a a1 (.x(x),.y(y),.z(z1));
    mt2015_q4a a2 (.x(x),.y(y),.z(z3));
    mt2015_q4b b1 (.x(x),.y(y),.z(z2));
    mt2015_q4b b2 (.x(x),.y(y),.z(z4));
    assign z12=z1|z2;
    assign z34=z3&z4;
    assign z=z12^z34;
    
endmodule

module mt2015_q4a (input x, input y, output z);
    assign z=(x^y)&x;
endmodule

module mt2015_q4b (input x, input y, output z);
    assign z=!(x^y);
endmodule
