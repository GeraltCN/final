function S = sy4f1(p)
  % p为0时使用for循环，p为1时使用while循环
  S = 0;
  if p
    for i = 1:100
      S = S+i;
    end
  else
    j = 100;
    while j>0
      S = S+j;
      j = j-1;
    end
  end
end
