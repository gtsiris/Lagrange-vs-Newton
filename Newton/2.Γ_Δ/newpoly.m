%Georgios Tsiris, 1115201700173
function [C,D] = newpoly(X,Y)
%---------------------------------------------------------------------------
%NEWPOLY   Kataskeui polionimou parembolis me ti methodo diirimenon diaforon Newton
% Inputs
%   X   dianisma tetmimenon
%   Y   dianisma tetagmenon
% Return
%   C   lista sinteleston gia to polionimo parembolis Newton
%   D   pinakas diirimenon diaforon
%--------------------------------------------------------------------------

% Dimiourgia pinaka diirimenon diaforon
n = length(X);
D = zeros(n,n);
D(:,1) = Y';
disp('D'); disp(D);
for j=2:n
  for k=j:n
      D(k,j) = (D(k,j-1)-D(k-1,j-1))/(X(k)-X(k-j+1));
  end
end

% Evresi proseggistikis timis tou polionimou se sigkekrimeno simeio
a=(diag(D))'; % õðïëïãéóìüò ôùí Ái
%  disp('a'); disp(a);
xp=1/2
fp=a(1)+a(2)*(xp-X(1))+a(3)*(xp-X(1))*(xp-X(2));
disp('fp');disp(fp);
%error
disp(['error at xp= ', num2str(xp)]);
disp(exp(xp)-fp);

temp=1;
for j=1:n
    temp=temp*(xp-X(j));
end
max_R=0;
for j=1:n
    R = abs(temp*exp(X(j))/6);
    if R > max_R
        max_R = R;
    end
end
disp('abs_error upper bound:');
disp(max_R);
disp('******************')


% Evresi proseggistikis timis tou polionimou se sigkekrimeno simeio
a=(diag(D))'; % õðïëïãéóìüò ôùí Ái
%  disp('a'); disp(a);
xp=1/3
fp=a(1)+a(2)*(xp-X(1))+a(3)*(xp-X(1))*(xp-X(2));
disp('fp');disp(fp);
%error
disp(['error at xp= ', num2str(xp)]);
disp(exp(xp)-fp);


% Euresi toy polionimou
C = D(n,n);
for k=(n-1):-1:1
      p=poly(X(k)); disp('p'); disp(p);
      C = conv(C,poly(X(k)));
      m = length(C);
      C(m) = C(m) + D(k,k);
      disp('3C'); disp(C);
end

