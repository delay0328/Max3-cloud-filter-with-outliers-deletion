function [B] = delabn(A,delt)
%outliers deletion
cha=diff(A);
weizhi=find(cha<=-delt);

%delete abnormal values
weizhi1=weizhi+1;
if weizhi1(length(weizhi1))>=length(A)
    weizhi2=weizhi1(1:(length(weizhi1)-1));
else
    weizhi2=weizhi1;
end
houcha=cha(weizhi2);
houweizhi=weizhi2(find(houcha>=delt));
B=A;
B(houweizhi)=(A(houweizhi-1)+A(houweizhi+1))/2;

%delete abnormal valleys
weizhi3=weizhi+2;
if weizhi3(length(weizhi3))>=length(A)
    weizhi4=weizhi3(1:(length(weizhi3)-1));
else
    weizhi4=weizhi3;
end
houcha1=cha(weizhi4);
houweizhi2=weizhi4(find(houcha1>=delt));
B(houweizhi2)=(A(houweizhi2-2)+A(houweizhi2+1))/2;
B(houweizhi2-1)=(A(houweizhi2-2)+A(houweizhi2+1))/2;

weizhi5=weizhi+3;
if weizhi5(length(weizhi5))>=length(A)
    weizhi6=weizhi5(1:(length(weizhi5)-1));
else
    weizhi6=weizhi5;
end
houcha2=cha(weizhi6);
houweizhi3=weizhi6(find(houcha2>=delt));
B(houweizhi3)=(A(houweizhi3-3)+A(houweizhi3+1))/2;
B(houweizhi3-1)=(A(houweizhi3-3)+A(houweizhi3+1))/2;
B(houweizhi3-2)=(A(houweizhi3-3)+A(houweizhi3+1))/2;

weizhi7=weizhi+4;
if weizhi7(length(weizhi7))>=length(A)
    weizhi8=weizhi7(1:(length(weizhi7)-1));
else
    weizhi8=weizhi7;
end
houcha3=cha(weizhi8);
houweizhi4=weizhi8(find(houcha3>=delt));
B(houweizhi4)=(A(houweizhi4-4)+A(houweizhi4+1))/2;
B(houweizhi4-1)=(A(houweizhi4-4)+A(houweizhi4+1))/2;
B(houweizhi4-2)=(A(houweizhi4-4)+A(houweizhi4+1))/2;
B(houweizhi4-3)=(A(houweizhi4-4)+A(houweizhi4+1))/2;
end

