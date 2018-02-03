t=0:1/8192:4;
y=chirp(t,0,1,1000);
soundsc(y)
pause(4)
specgram(y)
a=[1 -1.143 0.4128];
b=[0.0675 0.1349 0.0675];
afterfilter=filter(b,a,y);
soundsc(afterfilter)
figure(2)
specgram(afterfilter)