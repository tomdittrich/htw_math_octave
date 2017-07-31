clear all, clc;
% Uebungsblatt 12  Aufgabe 5

disp("")
disp("Aufgabe 5:")
disp("Hamming-Code (linear digital) Einfach:")
% Beispiel auf S.25 (mit H und G von S.24)

% Pruefmatrix
    H = [0, 0, 0, 1, 1, 1, 1;
         0, 1, 1, 0, 0, 1, 1;
         1, 0, 1, 0, 1, 0, 1]

% Informationsmatrix
    G = [1, 1, 1, 0, 0, 0, 0;
         1, 0, 0, 1, 1, 0, 0;
         0, 1, 0, 1, 0, 1, 0;
         1, 1, 0, 1, 0, 0, 1]

a = [1 0 0 1]
% t=a*G
c = mod(a*G, 2)
w = c;
w(5)= 1; % Fehlerhafter Wert
w
check_c = mod(H*c', 2) 
check_w = mod(H*w', 2) % 101 = 5 (binaer zu dezimal)


disp("")
disp("Hamming-Code (linear digital) Zweifach:")
% Beispiel auf S.26

% Pruefmatrix
H = [0, 0, 0, 0, 1, 1, 1, 1;
     0, 0, 1, 1, 0, 0, 1, 1;
     0, 1, 0, 1, 0, 1, 0, 1;
     1, 1, 1, 1, 1, 1, 1, 1]
  
% Informationsmatrix
G = [1, 1, 1, 1, 0, 0, 0, 0;
     1, 1, 0, 0, 1, 1, 0, 0;
     1, 0, 1, 0, 1, 0, 1, 0;
     1, 1, 1, 1, 1, 1, 1, 1]

a = [1 0 1 1]
c = mod(a*G, 2)
w = c;
w(4)= 1; w(2)=1;
w
check_c = mod(H*c', 2)
check_w = mod(H*w', 2) % zweifacher Fehler, s>0 und vierte Bit=0

