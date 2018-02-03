load number.mat
f=firpm(98, [0,0.33,0.36,1], [0, 0, 1, 1]);
freqz(f);
y=filter(f,1,secret);%fir 所以分母是1
soundsc(y)
specgram(y)
