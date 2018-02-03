load testdata_fisher.mat
X1x=X1(:,1);
X1y=X1(:,2);
X2x=X2(:,1);
X2y=X2(:,2);
plot(X1x,X1y,'ro')
hold on
plot(X2x,X2y,'g+')