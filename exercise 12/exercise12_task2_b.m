load testdata_fisher.mat
X1x=X1(:,1);
X1y=X1(:,2);
X2x=X2(:,1);
X2y=X2(:,2);
C1=cov(X1);
C2=cov(X2);
u1=(mean(X1))';
u2=(mean(X2))';
w=inv(C1+C2)*(u1-u2);
k=w(1)/w(2);
erfanshu=(w'*w);
unitw=w/(erfanshu);
proju1=w.*u1.*unitw;
proju2=w.*u2.*unitw;
c=(proju1+proju2)./2;
plot(X1x,X1y,'ro')
hold on
plot(X2x,X2y,'g+')
hold on
n=(-4:1:4);
y=n*k;
plot(n,y)
hold on
plot(c(1),c(2),'k*')

count=0;
          for(i=1:max(size(X1)))
          proj=dot(w,X1(i,:)');
                   if proj>=c
                   count=count+1;
                   end
                   
                   proj2=dot(w,X2(i,:)');
                             if proj2<c
                             count=count+1;
                             end
                             end
                             Per=count/(2*max(size(X1)))
                             hold off