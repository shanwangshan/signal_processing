load seiska.mat;
F=16384;
soundsc(x,F);
subplot(3,1,1);
specgram(x,[],F);
pause(2);
y=x(1:2:length(x));
soundsc(y,F/2);
subplot(3,1,2);
specgram(y,[],F/2);
z=decimate(x,2);
pause(2)
soundsc(z,F/2);
subplot(3,1,3)
specgram(z,[],F/2);