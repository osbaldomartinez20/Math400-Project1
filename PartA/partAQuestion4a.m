function [x] = partAQuestion4a()
%set the function
g = @(x)sin(x) + (2*sin(3*x)*cos(x));
fp = 6 * pi;
n = 100;

%get w from centerDiff.m
w = centerDiff(g,n,fp);

%get y from calculateY.m
y = calculateY(g,n,fp);

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
