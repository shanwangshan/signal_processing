u = [zeros(1,7),ones(1,20)];
n=-7:19;
subplot(2,1,1)
stem(n,u)
b=1;
a=[1 -1.1];
y=filter(b,a,u);
subplot(2,1,2)
stem(n,y,'r')
