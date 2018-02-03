close all
clc
x=[1 3 0 -1 5];%2.1
a=[5,6,7];
x=[130-15];
x=[130- 15];
a=[1 2 3];
b=[4 5];
c=[a -b];
a=[1 3 7];
a=[a 0 -1];
x=[];
%second part
2/2*3;
2/3^2;%^comes first
(2 / 3)^2;
2 + 3 * 4 - 4;
2^2 * 3/4 + 3;
2^(2 * 3) / (4 + 3);
2*3+4;
2^3^2;
-4^2;%ˆ has higher precedence than -
2^0.5;
sqrt(2);
(3+4)/(5+6);
(5+3)/(5*3);
2^(3^2);
(2*pi)^2;
2*pi^2;
1/sqrt(2*pi);
1/(2*sqrt(pi));
(2.3*4.5)^(1/3);%?
(1-2/(3+2))/(1+2/(3-2));
1000*(1+0.15/12)^60;
(1.23e-5+5.678e-3)*0.4567e-4;
%part 3
n=1:1:1000;
s=sum(n.^2);
sign=-1;
s=0;
for n=1:2:1003
sign=-sign;
s=s+sign/n;
end
s;
%page 64 the last question donot know
tic
n=1:2:100000000;
s1=sum(1./(n.^2)*1./(n+2).^2)

toc
tic
s=0;
for n=1:2:100000000
    s=s+1/((n^2)*(n+2)^2);
end
disp(s)
toc

%part 4
9;87;
.0;
25.82;
-356231;
%3.57*e2
%3.57e2.1
3.57e+2;
3;57e-2;
%part 5
 v=[3 1 5];
 i=1;
 for j=v
     i=i+1;
     if i==3
         i=i+2;
         m=i+j;
     end
 end
 


