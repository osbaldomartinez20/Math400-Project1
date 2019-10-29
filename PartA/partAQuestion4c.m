function [w80] = partAQuestion4c()
%set the function
j = @(x) exp(sin(x)*cos(x));
jP = @(x) exp(sin(x)*cos(x)) * ((cos(x))^2 - (sin(x))^2);
fp = 6 * pi;
n80 = 81;
n20 = 21;
n10 = 11;

%get w from centerDiff.m
w80 = centerDiff(j,n80,fp);
w20 = centerDiff(j,n20,fp);
w10 = centerDiff(j,n10,fp);

%get y' from calculateY.m
y80 = calculateY(jP,n80,fp);
y20 = calculateY(jP,n20,fp);
y10 = calculateY(jP,n10,fp);

%graph of 80 points
figure();
plot(linspace(0,fp,n80-1),w80);
xlabel('X[0 to 6pi), n = 80 points');
ylabel('Value of prime of j(x)');
hold on;
plot(linspace(0,fp,n80-1),y80);
legend('Prime with center difference','Actual Prime');
hold off;

%graph of 20 points
figure();
plot(linspace(0,fp,n20-1),w20);
xlabel('X[0 to 6pi), n = 20 points');
ylabel('Value of prime of j(x)');
hold on;
plot(linspace(0,fp,n20-1),y20);
legend('Prime with center difference','Actual Prime');
hold off;

%graph of 10 points
figure();
plot(linspace(0,fp,n10-1),w10);
xlabel('X[0 to 6pi), n = 10 points');
ylabel('Value of prime of j(x)');
hold on;
plot(linspace(0,fp,n10-1),y10);
legend('Prime with center difference','Actual Prime');
hold off;

end
