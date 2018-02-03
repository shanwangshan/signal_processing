close all
[x,Fs]=audioread('seiska.wav');
subplot(2,1,1);%2 rows 1 column,position 1
specgram(x,[],Fs)
soundsc(x,Fs)
pause(3);%stop for 3s so that they will not mix
h = fir1(30, 0.3,'high');%filter only high frequency can be passed
y = filter(h,1,x);
soundsc(y,Fs)
subplot(2,1,2);%position 2
specgram(y,[],Fs)
