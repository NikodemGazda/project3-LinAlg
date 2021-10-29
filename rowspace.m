function []=rowspace(A,B)
% finding dimensions of the vectors
[m1, n1] = size(A);
[m2, n2] = size(B);
% first condition, checking if the matrices are in the same R^n
if n1~=n2
    fprintf('Row A and Row B are subspaces of different Euclidean spaces');
    return
else
    n = n1;
    fprintf('Row A and Row B are subspaces of R^%i\n',n);
end
% outputting rref's of each matrix
fprintf('Reduced Echelon Form of A and B')
red_echA=rref(A) 
red_echB=rref(B)
% dimensions of each
fprintf('Dimensions of A and B')
dim_A=rank(red_echA)
dim_B=rank(red_echB)
% basis of each
fprintf('Basis of A and B')
basis_RowA = red_echA(1:rank(A),:).'
basis_RowB = red_echB(1:rank(B),:).'
% checking if row a and b are the whole rn
if rank(A)==n && rank(B)==n
   fprintf('Row A = Row B = R^%i\n',n)
   return
end
% checking if both rows have the same dimensions
if rank(A)~=rank(B)
    fprintf('Row A and Row B have different dimensions and the two subspaces cannot be equal');
    return
end
% checking if both rows are the same
if basis_RowA==basis_RowB
    fprintf('Row A = Row B');
    return
else
    fprintf('the dimensions of the Row A and Row B are the same but Row A ~= Row B');
end

end