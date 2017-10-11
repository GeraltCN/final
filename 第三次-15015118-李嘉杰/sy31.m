% 1.
  % (1)
  t = -10:0.01:10;
  y = 3*t.^4+t.^2-1;
  plot(t, y);

  % (2)
  f = @(x)(sin(x)+x);
  fplot(f,[-5,5])

  % (3)
  ezplot('x^2*exp(-x*x)',[-5 5])

% (4)
  f(x) = sym(log10(x+sqrt(1+x*x)));
  g = diff(f(x));

  fplot(f,[-3 3])
  hold on
  fplot(g,[-3 3])

% 2.
  % (1)
    t = 0:0.01:6*pi;
    x = cos(t);
    y = sin(t);
    z = t;
    plot3(t)

  % (2)
    t = 0:0.01:2*pi;
    x = 1/2*cos(t)+1/2;
    y = 1/2*sin(t);
    z = sqrt(1/2-1/2*cos(t));
    plot3(x,y,z)

  % (3)
    x=-10:0.1:10;
    y=-10:0.1:10;
    [x,y]=meshgrid(x,y);
    z=x.^2-y.^2;
    surf(x,y,z)

  % (4)
    x = -10:0.5:10;
    y = 1./x;
    [X,Y,Z]=cylinder(x);
    mesh(X,Z,Y)
