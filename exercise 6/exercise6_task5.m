load corrupt.mat
load handel
Z=fft(z);
Y=fft(y);
H=Z./Y;
h=ifft(H);
h1=h(1:10);
n=1:10;
stem(n,h1,'r')