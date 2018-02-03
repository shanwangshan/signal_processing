n=(-100:100);
x=sin(0.05*2*pi.*n);
a = 1;
b = [0.0349 0.4302 -0.5698 0.4302 0.0349];
y = filter(b,a,x);
y_estimated=0.3050*sin(0.05*2*pi.*n-0.6283);
plot(n,x,'g');
hold on;
plot(n,y,'r');
plot(n,y_estimated,'b--')
xlabel('n');
ylabel('amplitude')
legend('Original','True Response','Estimated Response');
hold off