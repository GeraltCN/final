function y = f3(x)
  if (x<=0)
    y = 1+x.^2;
  else
    y = exp(-x);
  end
end
