function D0n = calculateD0n(nmax,n)
%parameter nmax is a number to calculate the nmax * nmax matrix
%n is the derivate performed n times.

%make vectors that are full of
%nmax-1 1s and -1s
vP = [];
vN = [];
for i = 1:nmax-1
    vP(i) = 1;
    vN(i) = -1;
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

%compute D0n
D0n = D0;
i = 1;
while n > i
    D0n = D0n*D0;
    i = i + 1;
end
end