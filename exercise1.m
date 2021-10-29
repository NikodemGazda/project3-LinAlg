% Exercise 1:
type rowspace.m
C=[2 6 2 4 -6;-4 -9 -7 -2 3;-2 -5 -3 -2 3;3 8 9 -1 4]
%(a) 
A=C, B=rref(C) 
rowspace(A,B) 
%(b) 
A=[C;zeros(2,5)], B=rref(C) 
rowspace(A,B) 
%(c) 
A=magic(3);B=magic(4); 
rowspace(A,B) 
%(d) 
A=magic(4);B=hilb(4); 
rowspace(A,B) 
%(e) 
A=magic(5);B=hilb(5); 
rowspace(A,B) 
%(f) 
A=magic(5);B=[A;eye(3,5)]; 
rowspace(A,B) 

% BONUS POINT
A=[1 3 -2 4 2;2 4 3 6 4;1 3 -1 4 2; 3 2 1 5 6]
rowspace(colspace(sym(A)).',colspace(sym(rref(A))).')