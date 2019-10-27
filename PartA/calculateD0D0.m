function D0D0 = calculateD0D0(nmax)
%parameter nmax is a number to calculate the nmax * nmax matrix

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

%compute D0D0
D0D0 = D0 * D0;
end