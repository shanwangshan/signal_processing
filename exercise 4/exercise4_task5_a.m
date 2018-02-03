
load gong.mat
soundsc(y,Fs)
subplot(2,1,1);
specgram(y,[],Fs)
pause(4)
h=[-0.2427 -0.2001 0.7794 -0.2001 -0.2427];
z=conv(h,y);
soundsc(z,Fs);
subplot(2,1,2);
specgram(z,[],Fs)


