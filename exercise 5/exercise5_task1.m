%1
x=[-1 2 3 1];
n=0:3;
subplot(2,1,1)
stem(n,x)
xlabel('n')
ylabel('value x')
title('time domain')
y=fft(x);
z=abs(y);
subplot(2,1,2)
stem(n,z)
xlabel('n')
ylabel('FFT(x)')
title('frequency domain')
%
