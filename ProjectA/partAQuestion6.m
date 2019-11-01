function [y] = partAQuestion6()
%question 6 on project A
f = @(x) sin(x) + (0.3*sin(2*x)) - (0.4*sin(3*x));
n = 101;
fp = 6 * pi;

y = calculateY(f,n,fp);

%derivatives using D0
d1 = calculateD0n(n-1,1);
d2 = calculateD0n(n-1,2);
d3 = calculateD0n(n-1,3);
d4 = calculateD0n(n-1,4);

dy1 = calculateD0ny(d1,y,n,fp,1);
dy2 = calculateD0ny(d2,y,n,fp,2);
dy3 = calculateD0ny(d3,y,n,fp,3);
dy4 = calculateD0ny(d4,y,n,fp,4);

%calculate derivatives by hand
f1 = @(x) cos(x) + (0.6*cos(2*x)) - (1.2*cos(3*x));
f2 = @(x) -sin(x) - (1.2*sin(2*x)) + (3.6*sin(3*x));
f3 = @(x) -cos(x) - (2.4*cos(2*x)) + (10.8*cos(3*x));
f4 = @(x) sin(x) + (4.8*sin(2*x)) - (32.4*sin(3*x));

y1 = calculateY(f1,n,fp);
y2 = calculateY(f2,n,fp);
y3 = calculateY(f3,n,fp);
y4 = calculateY(f4,n,fp);

figure();
plot(linspace(0,fp,n-1),dy1);
xlabel('X[0 to 6pi), n = 100 points');
ylabel('Value of 1st prime of f(x)');
hold on;
plot(linspace(0,fp,n-1),y1);
grid on;
legend('Prime with D0ny','Actual Prime');
hold off;

figure();
plot(linspace(0,fp,n-1),dy2);
xlabel('X[0 to 6pi), n = 100 points');
ylabel('Value of 2nd prime of f(x)');
hold on;
plot(linspace(0,fp,n-1),y2);
grid on;
legend('Prime with D0ny','Actual Prime');
hold off;

figure();
plot(linspace(0,fp,n-1),dy3);
xlabel('X[0 to 6pi), n = 100 points');
ylabel('Value of 3rd prime of f(x)');
hold on;
plot(linspace(0,fp,n-1),y3);
grid on;
legend('Prime with D0ny','Actual Prime');
hold off;

figure();
plot(linspace(0,fp,n-1),dy4);
xlabel('X[0 to 6pi), n = 100 points');
ylabel('Value of 4th prime of f(x)');
hold on;
plot(linspace(0,fp,n-1),y4);
grid on;
legend('Prime with D0ny','Actual Prime');
hold off;

end

