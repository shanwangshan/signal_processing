close all
clear all
Fs = 44.1e3;
%Fstop = [0 15e3/Fs];
%Fpass = [18e3/Fs 22.05e3/Fs];
%Apass = 0.1;
%Astop = 30;
Wn = 16.5e3/Fs*2;
d = fir1(46,Wn,'high', hanning(47));
figure
impz(d)
hold on
figure
freqz(d,1)%分母是1
hold on
figure
zplane(d)
%fvtool(d)