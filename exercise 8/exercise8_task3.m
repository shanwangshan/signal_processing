b=[0.0122,0.0226,0.0298,0.0204,0.0099];
a=[1,-0.9170,0.0540,-0.2410,0.1990];
figure (1)
zplane(a,b)
figure (2)
freqz(b,a)
figure (3)
impz(a,b)
figure(4)
zplane(b,a)
figure(5)
freqz(a,b)
figure(6)
impz(b,a)

