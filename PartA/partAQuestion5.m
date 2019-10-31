function [x] = partAQuestion5()
%calculates the derivative of f(x)
%by using a D0 matrix.
f = @(x) exp(sin(x));
fDP = @(x) -exp(sin(x)) * (sin(x)-(cos(x))^2)
fp = 4*pi;
n = 20;

%get y from calculateY.m
y = calculateY(f,n,fp);

%get the double prime y of f(x)
yDP = calculateY(fDP,n,fp);

%get D0
D0 = calculateD0n(n-1,1);

%get D0D0 from calculateD0n.m
D0D0 = calculateD0n(n-1,2);

[D0]
[D0D0]

%get D0D0y from calculateD0y.m
D0D0y = calculateD0ny(D0D0,y,n,fp,2);

x = zeros(n-1,2);
x(:,1) = D0D0y;
x(:,2) = yDP;

end

