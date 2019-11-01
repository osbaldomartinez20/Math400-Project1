function [x] = partBQuestion1()
E = 10^-3;
n = 10
f = @(x) (2*x)+1 - (sinh((1-x)/sqrt(E))+(3*sinh(x/sqrt(E))))*(sinh(1/sqrt(E)))^-1;
fPP = @(x) -1*(3*sinh(x/sqrt(E)) + sinh((1-x)/sqrt(E)))/(E*sinh(1/sqrt(E)));
g = @(x) (2*x)+1;

yf = calculateY(f,n,1);
yfPP = calculateY(fPP,n,1);
yg = calculateY(f,n,1);

EyPP = -1*E*yfPP;

result = yf + EyPP;

x = zeros(n,2);
x(:,1) = result;
x(:,2) = yg;

