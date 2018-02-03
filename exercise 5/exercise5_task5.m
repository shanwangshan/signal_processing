f=1000;
Fs=8192;
n=1:8192;
x=sin(2*pi*n*f/Fs);
y=fft(x);
z=abs(y);
plot(n,z)
