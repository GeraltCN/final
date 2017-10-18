function [S sS] = sy4f4(A)
  S = sum(A(find(A>10)));
  sS = sqrt(S);
end
