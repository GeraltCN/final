% 1.1
clear
syms x
y = x^5+x^3-sqrt(x)/4
int(y,x)
pretty(ans)

%1.2
clear
syms a,b,c,x
y=sin(a*x)*sin(b*x)*sin(c*x)
int(y,x)
pretty(ans)

%1.3
syms x
y = x*exp(x)/(1+x)^2
int(y,x, 0, 1)

%1.4
syms x,a
y=x^2*sqrt(a^2-x^2)
int(y,x,0,a)

%1.5
clear
syms x
y = x*sin(x)^6*cos(x)^4
int(y,x,0,pi)

%1.6
clear
syms x
y = (1+sin(x)^2)/cos(x)^4
int(y,x,0,pi/4)

%1.7
syms x
y=x*sqrt((1+x)/(1-x))
int(y,x,0,1)

%1.8
syms x
y=exp(2*x)*sin(x)^2
int(y,x,0,pi/4)

%2
clear
syms x,t
y = exp(-t^2);
F(x) = int(y,t,0,x^2);
f(x) = diff(F(x));
g = x^2*f
int(g,x,-2,3)

%3
clear
syms x
I1 = quad(@f3, -1, 1) %quad
y1 = 1+x^2;
y2 = exp(-x);
I2 = int(y1,x,-1,0)+int(y2,x,0,1) %int
