//Design
module Merge_Sort
#(parameter N=8)
(A,Y);
input logic [N-1:0] A [0:N-1];   //Input Array
output logic [N-1:0] Y [0:N-1];	 //Output Array
logic [N-1:0] a [0:N-1];         //Temporary Array
logic [N-1:0] L [0:((N/2)-1)];   //Left Array
logic [N-1:0] R [0:((N/2)-1)];   //Right Array
int i,j,k,r,m,l,width,n1,n2;

always_comb
begin
    for(i=0;i<N;i=i+1)
    begin
        a[i]=A[i];
    end
    width=1;
    while(width<N)
    begin
        l=0;
        while(l<N)
        begin
            if((N-1)>(l+((width*2)-1)))
            begin
                r=(l+((width*2)-1));
            end
            else
            begin
                r=(N-1);
            end
            if((N-1)>(l+width-1))
            begin
                m=(l+width-1);
            end
            else
            begin
                m=(N-1);
            end
            n1=(m-l+1);
            n2=(r-m);
            for(i=0;i<n1;i=i+1)
            begin
                L[i]=0;
            end
            for(i=0;i<n2;i=i+1)
            begin
                R[i]=0;
            end
            for(i=0;i<n1;i=i+1)
            begin
                L[i]=a[l+i];
            end
            for(i=0;i<n2;i=i+1)
            begin
                R[i]=a[m+i+1];
            end
            i=0;
            j=0;
            k=l;
            while((i<n1)&&(j<n2))
            begin
                if(L[i]<=R[j])
                begin
                    a[k]=L[i];
                    i=i+1;
                end
                else
                begin
                    a[k]=R[j];
                    j=j+1;
                end
                k=k+1;
            end
            while(i<n1)
            begin 
                a[k]=L[i];
                i=i+1;
                k=k+1;         
            end
            while(j<n2)
            begin 
                a[k]=R[j];
                j=j+1;
                k=k+1;         
            end
            l=l+(width*2);
        end
        width=width*2;
    end
    for(i=0;i<N;i=i+1)
    begin
        Y[i]=a[i];
    end
end
endmodule