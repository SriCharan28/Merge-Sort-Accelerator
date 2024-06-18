//TestBench
module Merge_Sort_Tb;
localparam N=8;         //Size and Length of Array
reg [N-1:0] A [0:N-1];  //Input Array
wire [N-1:0] Y [0:N-1]; //Output Array

Merge_Sort ms1(A,Y);

initial
begin
    #100;
    A={6,5,12,14,9,10,2,3};
    #100;
    A={5,1,7,3,6,2,8,4};
    #100;
    A={8,6,7,5,4,2,3,1};
    #100;
    A={8,7,6,5,4,3,2,1};
    #100;
    $finish;
end
endmodule