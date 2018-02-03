load laughter
lenofy=length(y);
z=zeros(2*lenofy,1);
z(1:2:end)=y;
y1=fir1(100,0.5);
x=filter(y1,1,z);
y2=fir1(100,1/3);
x1=filter(y2,1,x);
x1=x1(1:3:end);

soundsc(y,Fs)
pause(5)
soundsc(z,2*Fs)
pause(5)
soundsc(x,2*Fs)
pause(5)
soundsc(x1,5461)
figure(1)
specgram(y)
figure(2)
specgram(z)
figure(3)
specgram(x)
figure(4)
specgram(x1)