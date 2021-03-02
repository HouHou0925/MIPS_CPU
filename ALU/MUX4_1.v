module MUX4_1(dataOut, sel, andOut, orOut, FAOut, sltOut );
    output dataOut;
    input andOut, orOut, FAOut, sltOut;
    input [5:0] sel;
    /*
    parameter AND = 6'b100100;
    parameter OR  = 6'b100101;
    
    parameter ADD = 6'b100000;
    parameter SUB = 6'b100010;
    parameter SLT = 6'b101010;
    */
    assign dataOut = sel[2] ? ( sel[0] ? orOut : andOut ) : ( sel[3] ? sltOut : FAOut);
    
endmodule