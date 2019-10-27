function [D0y,w] = partAQuestion2()
%calculates the derivative of f(x)
%by using a D0 matrix.
f = @(x) exp(sin(x));
fp = 4*pi;
n = 100;

%get w from centerDiff.m
w = centerDiff(f,n,fp);

%get y from calculateY.m
y = calculateY(f,n,fp);

%get D0 from calculateD0.m
D0 = calculateD0(n-1);

%get D0y from calculateD0y.m
D0y = calculateD0y(D0,y,n,fp);