function [x] = partAQuestion2()
%calculates the derivative of f(x)
%by using a D0 matrix.
f = @(x) exp(sin(x));
fp = 4*pi;
n = 100;

%get w from partAQuestion1.m
w = partAQuestion1();

%get y from calculateY.m
y = calculateY(f,n,fp);

%get D0 from calculateD0n.m
D0 = calculateD0n(n-1,1);

%get D0y from calculateD0ny.m
D0y = calculateD0ny(D0,y,n,fp,1);

%x is used to compare side by side the results from
%D0y and w.
x = zeros(n-1,2);
x(:,1) = D0y;
x(:,2) = w;
end