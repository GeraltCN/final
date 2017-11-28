clear
syms x n
A = []
B = []
f = x^2+x^3;
A(1)= int(f,x,-pi,pi)/pi;
for n = 1:5
    A(n+1) = int(f*cos(n*x),x,-pi,pi)/pi;
    B(n) = int(f*sin(n*x),x,-pi,pi)/pi;
end

