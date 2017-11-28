
function [a0,a,b]=myfly(f,n)
    a0=fourieran(f,0);  
for i=1:5
    a(i)=fourieran(f,i);
end
for i=1:5
    b(i)=fourierbn(f,i);
end
a
b

%fourieran.m
function an=fourieran(f,n)
syms x
an=int(f*cos(n*x),x,-pi,pi)/pi;

%fourierbn.m
function bn=fourierbn(f,n)
syms x
bn=int(f*sin(n*x),x,-pi,pi)/pi;



