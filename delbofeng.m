function [B] = delbofeng(A,delt)
%remove the NDVI values higher than 0.99

if A(1)>=delt
    if A(2)>=delt
        if A(3)>=delt
            B(1:3)=A(4);
            k=5;
        else
            B(1:2)=A(3)
            k=4;
        end
    else
        B(1)=A(2);
        k=3;
    end
else
    k=2;
end

while k<=length(A)-3
    if A(k)>=delt
        if A(k+1)>=delt
            if A(k+2)>=delt
                if A(k+3)>=delt
                    if k==length(A)-3
                        A(k)=A(k-1);
                    else
                        B(k:(k+3))=(A(k-1)+A(k+4))/2;
                        k=k+4;
                    end
                else
                    B(k:(k+2))=(A(k-1)+A(k+3))/2;
                    k=k+3;
                end
            else
                B(k:(k+1))=(A(k-1)+A(k+2))/2;
                k=k+2;
            end
        else
            B(k)=(A(k-1)+A(k+1))/2;
            k=k+1;
        end
    else
        B(k)=A(k);
        k=k+1;
    end       
end
B((length(A)-2):length(A))=A((length(A)-2):length(A));
end

