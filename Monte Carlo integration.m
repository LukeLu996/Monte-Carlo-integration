clear
sampleSize = 1000000;
numPoints=0;
x1=3*rand(1,3*sampleSize);   %uniform x on [0,3]
x2=-3*rand(1,3*sampleSize);   %uniform x on [-3,0]
fx1=@(x1) 1/sqrt(2*pi) *exp(-x1.^2/2);  
fx2=@(x2) 1/sqrt(2*pi) *exp(-x2.^2/2);
Ef1=1/sampleSize*sum(fx1(x1));
Ef2=1/sampleSize*sum(fx2(x2));
intVal=Ef1+Ef2 % value of the integral