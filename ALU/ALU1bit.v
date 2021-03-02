module ALU1bit( dataOut, Set, cout, dataA, dataB, Binvert, cin, less, Signal );

/*
parameter AND = 6'b100100;
parameter OR  = 6'b100101;
parameter ADD = 6'b100000;
parameter SUB = 6'b100010;
parameter SLT = 6'b101010;

*/
    input dataA, dataB, Binvert, cin, less;
    input [5:0] Signal;
    output dataOut, Set, cout;
    
    wire cin;
    wire andOut, orOut, xorOut;
    
    //A and B
    and(andOut, dataA, dataB);
    //A or B 
    or(orOut, dataA, dataB);
    // Binvert xor B 
    xor(xorOut, Binvert, dataB);
    // add sub slt
    one_bit_FA fulladder(Set, cout, dataA, xorOut, cin);
    MUX4_1 mux4to1(dataOut, Signal, andOut, orOut, Set, less);
    
endmodule