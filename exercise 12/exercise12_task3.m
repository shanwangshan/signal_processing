imOrig=imread('canoe.jpg');
imshow(imOrig, []);
[x1,y1]=ginput(1);
[x2,y2]=ginput(1);
window1=imOrig(y1-3:y1+3,x1-3:x1+3,:);
window2=imOrig(y2-3:y2+3,x2-3:x2+3,:);
X1=double(reshape(window1, 49, 3))';
X2=double(reshape(window2, 49, 3))';
X1x=X1(:,1);
X1y=X1(:,2);


X2x=X2(:,1);
X2y=X2(:,2);


C1=cov(X1);
C2=cov(X2);
u1=(mean(X1))';
u2=(mean(X2))';
w=(C1+C2)\(u1-u2);
k=w(1)/w(2);
plot(X1x,X1y,'ro')
hold on
plot(X2x,X2y,'g+')
hold on
n=(-200:1:200);
y=n*k;
plot(n,y,'b')
hold off