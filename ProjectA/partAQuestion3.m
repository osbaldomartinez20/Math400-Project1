function [w80] = partAQuestion3()
%set the function
f = @(x) exp(sin(x));
fP = @(x) exp(sin(x)) * cos(x);
fp = 4*pi;
n80 = 81;
n20 = 21;
n10 = 11;

%get w from centerDiff.m
w80 = centerDiff(f,n80,fp);
w20 = centerDiff(f,n20,fp);
w10 = centerDiff(f,n10,fp);

%get y' from calculateY.m
y80 = calculateY(fP,n80,fp);
y20 = calculateY(fP,n20,fp);
y10 = calculateY(fP,n10,fp);

%graph of 80 points
figure();
plot(linspace(0,fp,n80-1),w80);
xlabel('X[0 to 4pi), n = 80 points');
ylabel('Value of prime of f(x)');
hold on;
plot(linspace(0,fp,n80-1),y80);
grid on;
legend('Prime with center difference','Actual Prime');
hold off;

%graph of 20 points
figure();
plot(linspace(0,fp,n20-1),w20);
xlabel('X[0 to 4pi), n = 20 points');
ylabel('Value of prime of f(x)');
hold on;
plot(linspace(0,fp,n20-1),y20);
grid on;
legend('Prime with center difference','Actual Prime');
hold off;

%graph of 10 points
figure();
plot(linspace(0,fp,n10-1),w10);
xlabel('X[0 to 4pi), n = 10 points');
ylabel('Value of prime of f(x)');
hold on;
plot(linspace(0,fp,n10-1),y10);
grid on;
legend('Prime with center difference','Actual Prime');
hold off;

end
