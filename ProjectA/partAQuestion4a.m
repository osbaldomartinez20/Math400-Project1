function [w8] = partAQuestion4a()
%set the function
g = @(x)sin(x) + (2*sin(3*x)*cos(x));
gP = @(x) cos(x) + (6*cos(x)*cos(3*x)) - (2*sin(x)*sin(3*x));
fp = 6 * pi;
n80 = 81;
n20 = 21;
n10 = 11;

%get w from centerDiff.m
w80 = centerDiff(g,n80,fp);
w20 = centerDiff(g,n20,fp);
w10 = centerDiff(g,n10,fp);

%get y' from calculateY.m
y80 = calculateY(gP,n80,fp);
y20 = calculateY(gP,n20,fp);
y10 = calculateY(gP,n10,fp);

%graph of 80 points
figure();
plot(linspace(0,fp,n80-1),w80);
xlabel('X[0 to 6pi), n = 80 points');
ylabel('Value of prime of g(x)');
hold on;
plot(linspace(0,fp,n80-1),y80);
grid on;
legend('Prime with center difference','Actual Prime');
hold off;

%graph of 20 points
figure();
plot(linspace(0,fp,n20-1),w20);
xlabel('X[0 to 6pi), n = 20 points');
ylabel('Value of prime of g(x)');
hold on;
plot(linspace(0,fp,n20-1),y20);
grid on;
legend('Prime with center difference','Actual Prime');
hold off;

%graph of 10 points
figure();
plot(linspace(0,fp,n10-1),w10);
xlabel('X[0 to 6pi), n = 10 points');
ylabel('Value of prime of g(x)');
hold on;
plot(linspace(0,fp,n10-1),y10);
grid on;
legend('Prime with center difference','Actual Prime');
hold off;

end
