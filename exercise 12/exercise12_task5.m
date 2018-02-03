load testdata_svm.mat
X1x=X1(1,:);
X1y=X1(2,:);
X2x=X2(1,:);
X2y=X2(2,:);
training=[X1,X2]';
classes=[ones(length(X1), 1); zeros(length(X2), 1)];
classes1=zeros(length(kernel),1);
kernel={'quadratic';'polynomial';'rbf'};
for n=1:3
    figure;
svmStruct = svmtrain(training, classes,'showplot', true,...
    'kernel_function',kernel{n}, 'quadprog_opts', optimset('MaxIter',1000));
result=svmclassify(svmStruct, training);
error=classes-result;  
hold on

plot(X1x,X1y,'ro')
hold on
plot(X2x,X2y,'g+')
end