function [w80] = partAQuestion4b()
%set the function
h = @(x)sin(x) + (sin(10*x));
hP = @(x)cos(x) + (10*cos(10*x));
fp = 6 * pi;
n80 = 81;
n20 = 21;
n10 = 11;

%get w from centerDiff.m
w80 = centerDiff(h,n80,fp);
w20 = centerDiff(h,n20,fp);
w10 = centerDiff(h,n10,fp);

%get y' from calculateY.m
y80 = calculateY(hP,n80,fp);
y20 = calculateY(hP,n20,fp);
y10 = calculateY(hP,n10,fp);

%graph of 80 points
figure();
plot(linspace(0,fp,n80-1),w80);
xlabel('X[0 to 6pi), n = 80 points');
ylabel('Value of prime of h(x)');
hold on;
plot(linspace(0,fp,n80-1),y80);
grid on;
legend('Prime with center difference','Actual Prime');
hold off;

%graph of 20 points
figure();
plot(linspace(0,fp,n20-1),w20);
xlabel('X[0 to 6pi), n = 20 points');
ylabel('Value of prime of h(x)');
hold on;
plot(linspace(0,fp,n20-1),y20);
grid on;
legend('Prime with center difference','Actual Prime');
hold off;

%graph of 10 points
figure();
plot(linspace(0,fp,n10-1),w10);
xlabel('X[0 to 6pi), n = 10 points');
ylabel('Value of prime of h(x)');
hold on;
plot(linspace(0,fp,n10-1),y10);
grid on;
legend('Prime with center difference','Actual Prime');
hold off;

end