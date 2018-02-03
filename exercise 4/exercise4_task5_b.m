[y,Fs]=audioread('hall.wav');
soundsc(y,Fs)
pause(3)
load seiska.mat
soundsc(x,Fs)
pause(2)
z=conv(x,y);
soundsc(z,Fs)
