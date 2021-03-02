`timescale 1ns/1ns
module ALU( dataA, dataB, Signal, dataOut, reset );
    input reset ;
    input [31:0] dataA ;
    input [31:0] dataB ;    
    input [5:0] Signal ;
    output [31:0] dataOut ;

//   Signal ( 6-bits)?
//   AND  : 36
//   OR   : 37
//   ADD  : 32
//   SUB  : 34
//   SLT  : 42

    wire cin;
    wire [31:0] cout;

    parameter AND = 6'b100100;
    parameter OR  = 6'b100101;
    parameter ADD = 6'b100000;
    parameter SUB = 6'b100010;  
    parameter SLT = 6'b101010;
/*
定義各種訊號
parameter定義一常數
*/
    assign cin = (Signal == SUB) ? 1 : 0;
    
    ALU1bit alu0(.dataOut(dataOut[0]),.set() , .cout(cout[0]), .dataA(dataA[0]), .dataB(dataB[0]), .Binvert(Signal[1]), .cin(cin), .less(set), .Signal(Signal) );
    ALU1bit alu1(.dataOut(dataOut[1]),.set() , .cout(cout[1]), .dataA(dataA[1]), .dataB(dataB[1]), .Binvert(Signal[1]), .cin(cout[0]), .less(1'b0), .Signal(Signal) );
    ALU1bit alu2(.dataOut(dataOut[2]),.set() , .cout(cout[2]), .dataA(dataA[2]), .dataB(dataB[2]), .Binvert(Signal[1]), .cin(cout[1]), .less(1'b0), .Signal(Signal) );
    ALU1bit alu3(.dataOut(dataOut[3]),.set() , .cout(cout[3]), .dataA(dataA[3]), .dataB(dataB[3]), .Binvert(Signal[1]), .cin(cout[2]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu4(.dataOut(dataOut[4]),.set() , .cout(cout[4]), .dataA(dataA[4]), .dataB(dataB[4]), .Binvert(Signal[1]), .cin(cout[3]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu5(.dataOut(dataOut[5]),.set() , .cout(cout[5]), .dataA(dataA[5]), .dataB(dataB[5]), .Binvert(Signal[1]), .cin(cout[4]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu6(.dataOut(dataOut[6]),.set() , .cout(cout[6]), .dataA(dataA[6]), .dataB(dataB[6]), .Binvert(Signal[1]), .cin(cout[5]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu7(.dataOut(dataOut[7]),.set(), .cout(cout[7]), .dataA(dataA[7]), .dataB(dataB[7]), .Binvert(Signal[1]), .cin(cout[6]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu8(.dataOut(dataOut[8]),.set() , .cout(cout[8]), .dataA(dataA[8]), .dataB(dataB[8]), .Binvert(Signal[1]), .cin(cout[7]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu9(.dataOut(dataOut[9]),.set() , .cout(cout[9]), .dataA(dataA[9]), .dataB(dataB[9]), .Binvert(Signal[1]), .cin(cout[8]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu10(.dataOut(dataOut[10]),.set() , .cout(cout[10]), .dataA(dataA[10]), .dataB(dataB[10]), .Binvert(Signal[1]), .cin(cout[9]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu11(.dataOut(dataOut[11]),.set() , .cout(cout[11]), .dataA(dataA[11]), .dataB(dataB[11]), .Binvert(Signal[1]), .cin(cout[10]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu12(.dataOut(dataOut[12]),.set() , .cout(cout[12]), .dataA(dataA[12]), .dataB(dataB[12]), .Binvert(Signal[1]), .cin(cout[11]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu13(.dataOut(dataOut[13]),.set() , .cout(cout[13]), .dataA(dataA[13]), .dataB(dataB[13]), .Binvert(Signal[1]), .cin(cout[12]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu14(.dataOut(dataOut[14]),.set() , .cout(cout[14]), .dataA(dataA[14]), .dataB(dataB[14]), .Binvert(Signal[1]), .cin(cout[13]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu15(.dataOut(dataOut[15]),.set() , .cout(cout[15]), .dataA(dataA[15]), .dataB(dataB[15]), .Binvert(Signal[1]), .cin(cout[14]), .less(1'b0), .Signal(Signal) );
    ALU1bit alu16(.dataOut(dataOut[16]),.set() , .cout(cout[16]), .dataA(dataA[16]), .dataB(dataB[16]), .Binvert(Signal[1]), .cin(cout[15]), .less(1'b0), .Signal(Signal) );
    ALU1bit alu17(.dataOut(dataOut[17]),.set() , .cout(cout[17]), .dataA(dataA[17]), .dataB(dataB[17]), .Binvert(Signal[1]), .cin(cout[16]), .less(1'b0), .Signal(Signal) );
    ALU1bit alu18(.dataOut(dataOut[18]),.set() , .cout(cout[18]), .dataA(dataA[18]), .dataB(dataB[18]), .Binvert(Signal[1]), .cin(cout[17]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu19(.dataOut(dataOut[19]),.set() , .cout(cout[19]), .dataA(dataA[19]), .dataB(dataB[19]), .Binvert(Signal[1]), .cin(cout[18]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu20(.dataOut(dataOut[20]),.set() , .cout(cout[20]), .dataA(dataA[20]), .dataB(dataB[20]), .Binvert(Signal[1]), .cin(cout[19]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu21(.dataOut(dataOut[21]),.set() , .cout(cout[21]), .dataA(dataA[21]), .dataB(dataB[21]), .Binvert(Signal[1]), .cin(cout[20]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu22(.dataOut(dataOut[22]),.set() , .cout(cout[22]), .dataA(dataA[22]), .dataB(dataB[22]), .Binvert(Signal[1]), .cin(cout[21]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu23(.dataOut(dataOut[23]),.set() , .cout(cout[23]), .dataA(dataA[23]), .dataB(dataB[23]), .Binvert(Signal[1]), .cin(cout[22]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu24(.dataOut(dataOut[24]),.set() , .cout(cout[24]), .dataA(dataA[24]), .dataB(dataB[24]), .Binvert(Signal[1]), .cin(cout[23]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu25(.dataOut(dataOut[25]),.set() , .cout(cout[25]), .dataA(dataA[25]), .dataB(dataB[25]), .Binvert(Signal[1]), .cin(cout[24]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu26(.dataOut(dataOut[26]),.set() , .cout(cout[26]), .dataA(dataA[26]), .dataB(dataB[26]), .Binvert(Signal[1]), .cin(cout[25]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu27(.dataOut(dataOut[27]),.set() , .cout(cout[27]), .dataA(dataA[27]), .dataB(dataB[27]), .Binvert(Signal[1]), .cin(cout[26]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu28(.dataOut(dataOut[28]),.set() , .cout(cout[28]), .dataA(dataA[28]), .dataB(dataB[28]), .Binvert(Signal[1]), .cin(cout[27]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu29(.dataOut(dataOut[29]),.set() , .cout(cout[29]), .dataA(dataA[29]), .dataB(dataB[29]), .Binvert(Signal[1]), .cin(cout[28]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu30(.dataOut(dataOut[30]),.set() , .cout(cout[30]), .dataA(dataA[30]), .dataB(dataB[30]), .Binvert(Signal[1]), .cin(cout[29]), .less(1'b0), .Signal(Signal) ); 
    ALU1bit alu31(.dataOut(dataOut[31]), .set(set), .cout(cout[31]), .dataA(dataA[31]), .dataB(dataB[31]), .Binvert(Signal[1]), .cin(cout[30]), .less(1'b0), .Signal(Signal) ); 
    
    
endmodule