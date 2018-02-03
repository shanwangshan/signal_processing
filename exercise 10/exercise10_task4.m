%t = linspace(-20,20);
t=(-20:1:20);
fc=0.3;
y = 2*fc*sinc(t*2*fc);

figure(1)
plot(t,y);
xlabel('Time (sec)');ylabel('Amplitude'); title('Sinc Function')

figure(2)
freqz(y)