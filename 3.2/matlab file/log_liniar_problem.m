close all; clear all; clc;
x = [1 2 3 4 5];
y = [.5 1.7 3.4 5.7 8.4];
n = length(x);
A = [n sum(log10(x));sum(log10(x)) sum((log10(x)).^2)];
X = [];
Y = [sum(log10(y))  sum(log10(y).*log10(x))];
X = Y/A;
a2 = 10^X(1,1)
b2 = X(1,2)
plot(x,y,'o');
hold on;
ym  =   log10(a2) + b2*log10(x);
plot(x,ym);