function [D0D0y] = partAQuestion5()
%calculates the derivative of f(x)
%by using a D0 matrix.
f = @(x) exp(sin(x));
fp = 4*pi;
n = 101;

%get y from calculateY.m
y = calculateY(f,n,fp);

%get D0 from calculateD0n.m
D0D0 = calculateD0n(n-1,2);

%get D0y from calculateD0y.m
D0D0y = calculateD0ny(D0D0,y,n,fp,2);

end

