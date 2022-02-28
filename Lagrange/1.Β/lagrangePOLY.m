%Georgios Tsiris, 1115201700173
function [l,L]=lagrangePOLY(x,y)
% Συνάρτηση που υλοποιεί την παρεμβολή Lagrange
% Είσοδος:
% x = [x0 x1 ... xN], y = [y0 y1 ... yN]
% Έξοδος:
% l = Το ζητούμενο πολυώνυμο βαθμού N (πολυώνυμο παρεμβολής)
% L = Πολυώνυμα του Lagrange
N=length(x)-1; % βαθμός πολυωνύμου
l=0;
% Προσδιορισμός των Li(x)
for m=1:N+1
   P=1;
   for k=1:N+1
     if k~=m
        P=conv(P,[1 -x(k)])/(x(m)-x(k));
     end
   end
   disp('P3'); disp(P);
% Εύρεση του πολυωνύμου παρεμβολής
   L(m,:)=P; % Πολυώνυμα του Lagrange
   l=l+y(m)*P; % Πολυώνυμο παρεμβολής
   end
end
