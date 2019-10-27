function D0D0y = calculateD0D0y(D0D0,y,n,fp)
%parameter D0 is a matrix D0
%parameter y is a vector of y values
%parameter n is the number of points
%fp is the last point of interval

%multiply the D0 matrix and y vector, then
%multiply each element by 1/2h.
D0D0y = (D0D0*y);
for n = 1: n-1
    D0D0y(n) = D0D0y(n)/ (4 * ((fp/n)^2));
end

end