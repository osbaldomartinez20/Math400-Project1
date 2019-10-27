function  w = partAQuestion1()
f = @(x) exp(sin(x));
fp = 4*pi;
%make something to store the possible values of 
%x from interval [0,4*pi) in n points, (0,4*pi,n).
x = linspace(0,fp,100);
w = zeros(length(x)-1,1);
%max value of n = length(x)-1
for n = 1:length(x)-1
    %find h in for each iteration
    h = fp / n;
    %calculate the value of w(n) using formula from
    %project instructions.
    if (n==1)
        w(n) = (f(x(2))-f(x(length(x)-1))) / (2*h);
    elseif (n == length(x)-1)
        w(n) = (f(x(1))-f(x(n-1))) / (2*h);
    else
        w(n) = (f(x(n+1))-f(x(n-1))) / (2*h);
    end
end