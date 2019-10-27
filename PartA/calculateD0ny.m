function D0ny = calculateD0ny(D0n,y,n,fp,m)
%parameter D0 is a matrix D0
%parameter y is a vector of y values
%parameter n is the number of points
%fp is the last point of interval
%m is the number of times the derivative was performed.

%multiply the D0 matrix and y vector, then
%multiply each element by 1/2h.
D0ny = (D0n*y);
for n = 1: n-1
    D0ny(n) = D0ny(n)/ ((2^m) * ((fp/n)^m));
end

end