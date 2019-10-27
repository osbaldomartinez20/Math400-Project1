function [D0y,w] = partAQuestion2()
f = @(x) exp(sin(x));
fp = 4*pi;

x = linspace(0,fp,100);
%get w from last question
w = partAQuestion1();
y = zeros(length(x)-1,1);
nmax = length(x)-1;

%calculate the values of y
for n = 1:nmax
    y(n) = f(x(n));
end

%make vectors that are full of
%nmax-1 1s and -1s
vP = [];
vN = [];
for n = 1:nmax-1
    vP(n) = 1;
    vN(n) = -1;
end

%make matrices with the vectors
dP = diag(vP,1);
dN = diag(vN,-1);
%combine the matrices to make D0
D0 = dP + dN;
%add a 1 and -1 to the correct places in the matrix
%to complete the D0 matrix.
D0(nmax,1) = 1;
D0(1,nmax) = -1;

%multiply the D0 matrix and y vector, then
%multiply each element by 1/2h.
D0y = (D0*y);
for n = 1: nmax
    D0y(n) = D0y(n)/ (2 * (fp/n));
end