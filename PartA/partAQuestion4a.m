function [w,y] = partAQuestion4a()
%set the function
g = @(x)sin(x) + (2*sin(3*x)*cos(x));
gP = @(x) cos(x) + (6*cos(x)*cos(3*x)) - (2*sin(x)*sin(3*x));
fp = 6 * pi;
n80 = 81;

%get w from centerDiff.m
w80 = centerDiff(g,n80,fp);

%get y' from calculateY.m
y80 = calculateY(gP,n80,fp);

plot(linspace(0,fp,n-1),w80);
xlabel('X(0-6pi), n = 80 points');
ylabel('Value of prime of g(x)');
hold on;
plot(linspace(0,fp,n-1),y80);
hold off;
end
