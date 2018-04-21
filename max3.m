function [B] = max3(A)
%Max3 cloud filter

Alen=length(A);
l=1;
while l<=Alen-2
    B(r,s,l)=max([A(r,s,l),A(r,s,l+1),A(r,s,l+2)]);
    l=l+1;
end

end

