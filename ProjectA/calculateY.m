function y = calculateY(f,n,fp)
%parameter f is a function
%parameter n is the number of points
%fp is the last point of interval

x = linspace(0,fp,n);
y = zeros(length(x)-1,1);

%calculate the values of y
for i = 1:length(x)-1
    y(i) = f(x(i));
end

end