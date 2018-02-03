a=rand(1,8192);
h=0.05*[ones(1,20), zeros(1,8192-20)];
tic
y1=ifft(fft(a).*fft(h));
toc;
tic
y2=conv(a,h);
toc
plot((1:200),real(y1(1:200)),(1:200),y2(1:200))