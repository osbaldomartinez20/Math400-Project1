function [x] = partAQuestion2()
%calculates the derivative of f(x)
%by using a D0 matrix.
f = @(x) exp(sin(x));
fp = 4*pi;
n = 51;

%get w from partAQuestion1.m
w = centerDiff(f,n,fp);

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

%graph of both derivatives put together
%Note if you see one line, it means values are the same
figure();
plot(linspace(0,fp,n-1),w);
xlabel('X[0 to 4pi), n = 100 points');
ylabel('Value of prime of w and D0y');
hold on;
plot(linspace(0,fp,n-1),D0y);
grid on;
legend('Prime with center difference','Prime with D0y');
hold off;

end