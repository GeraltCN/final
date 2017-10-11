sy1sj;

a1 = A(1,:)
a2 = A(2,:)
a3 = A(3,:)
a4 = A(4,:)
a5 = A(5,:)
a6 = A(6,:)

b1 = A(:,1)
b2 = A(:,2)
b3 = A(:,3)
b4 = A(:,4)
b5 = A(:,5)
b6 = A(:,6)


for i = 1:3
  for j = i:3
    A3(i,j) = A(2i-1,2j);
  end
end


A4 = [A ones(6);zeros(6) B]

A5 = orth(A)
A5*A5' == ones(rank(A))

A7 = dot(a1,a2)

# row 1,4 exchage
templ = A(1,;)
A(1,:)=A(4,:)
A(4,:)=templ

# column 3 multiply 6
A(:,3)=A(:,3)*6

# row 5 add 10 times the row 1
A(5,:) = A(1,:)*10

A70 = reff(A)

## ans =

##     1.00    0.00    0.00    0.00   -0.69    2.44
##     0.00    1.00    0.00    0.00    5.60  -10.58
##     0.00    0.00    1.00    0.00    0.63   -1.20
##     0.00    0.00    0.00    1.00   -2.84    3.18
##     0.00    0.00    0.00    0.00    0.00    0.00
##     0.00    0.00    0.00    0.00    0.00    0.00

A7 = A(:,1:4)
A71 = A7*A70(1:4,5)
A72 = A7*A70(1:4,6)

[L, U] = lu(A)

eu = norm(A, 2) %  Euclidean norm	

in = norm(A, inf) % infinite norm
one = norm(A, 1) % 1th norm
fro = norm(A, 'fro') % f norm

con2 = cond(A, 2) % 2-norm condition numebr
coni = cond(A, inf) % inf-norm condition number

