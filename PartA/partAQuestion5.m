function [D0D0y] = partAQuestion5()
%calculates the derivative of f(x)
%by using a D0 matrix.
f = @(x) exp(sin(x));
fp = 4*pi;
n = 100;

%get y from calculateY.m
y = calculateY(f,n,fp);

%get D0 from calculateD0.m
D0D0 = calculateD0D0(n-1);

%get D0y from calculateD0y.m
D0D0y = calculateD0D0y(D0D0,y,n,fp);

end

