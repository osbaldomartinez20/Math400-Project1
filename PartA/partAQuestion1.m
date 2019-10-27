function [w] = partAQuestion1()
%calculates the derivative of f(x)
%by using a center difference.
f = @(x) exp(sin(x));
fp = 4*pi;
n = 100;

%get w from centerDiff.m
w = centerDiff(f,n,fp);