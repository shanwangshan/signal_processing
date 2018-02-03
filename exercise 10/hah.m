fp=1240/8192;
fs=820/8192;
fc=(fp+fs)/2;
deltaf=fp-fs;
N=109;
n=[-54:1:54];
y1=-2*fc*sinc(2*fc*n);
y1(55)=1-2*fc;

blackmanwn=0.42+0.5*cos(2*pi*n/N)+0.08*cos(4*pi*n/N);
y2=y1.*blackmanwn;
freqz(y2)