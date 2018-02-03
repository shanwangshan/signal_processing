N=[8 16 32 64 128 256 512 1024];
len=length(N);
for N1=N(1:len)
   tic
   F=exp(-2*pi*i*(0:N1-1)'*(0:N1-1)/N1); 
   
   X=F*rand(N1,1);
   tim1(N1)=toc 
end
plot(tim1,'b')
hold on
for N2=N(1:len)
tic
X=fft(rand(N2,1));
tim2(N2)=toc
end
plot(tim2,'r')
hold off
subplot(2,1,1)
plot(tim1,'b')
subplot(2,1,2)
plot(tim2,'r')
