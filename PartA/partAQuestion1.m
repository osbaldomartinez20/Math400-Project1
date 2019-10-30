function [w] = partAQuestion1()
%calculates the derivative of f(x)
%by using a center difference.
f = @(x) exp(sin(x));
fp = 4*pi;
n = 101;

%get w from centerDiff.m
w = centerDiff(f,n,fp);
plot(linspace(0,fp,n-1),w);
xlabel('X[0 to 4pi), n = 100 points');
ylabel('Value of prime of w');
grid on;
legend('Prime with center difference');

end