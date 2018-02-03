fp=1240/8192;
fs=820/8192;
fc=(fp+fs)/2;
deltaf=fp-fs;
N=109;
y2=fir1((N-1),2*fc,'high',blackman(N));
freqz(y2)