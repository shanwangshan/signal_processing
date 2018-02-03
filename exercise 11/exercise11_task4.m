load laughter
lenofy=length(y);
z=zeros(2*lenofy,1);
z(1:2:end)=y;
y1=fir1(100,0.5);
x=filter(y1,1,z);

soundsc(y,Fs)
pause(5)
soundsc(z,2*Fs)
pause(5)
soundsc(x,2*Fs)
figure(1)
specgram(y)
figure(2)
specgram(z)
figure(3)
specgram(x)