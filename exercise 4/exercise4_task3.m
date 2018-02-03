close all
clear 
clc
f=8000;
Fs=8192;
n=1:8192;
x=sin(2*pi*n*f/Fs);
%plot(n,x)
subplot(2,1,1);
specgram(x,[],Fs)

soundsc(x,Fs)
pause(2);
f=3000;
x=sin(2*pi*n*f/Fs);
soundsc(x,Fs);
subplot(2,1,2);
specgram(x,[],Fs)
