#!/usr/bin/octave

%A = [2 3 -1; 2 1 -1; -4 2 1]; % 3A
%b = [0 2 -9]'; % 3A

A = [1 1 0 3; 2 1 -1 1; 3 -1 -1 2; -1 2 3 -1]; % 3B
b = [4 1 -3 4]'; % 3B

%A = [0 3 -5 1; -1 -3 0 -1; -2 1 2 2; -3 4 2 2]; % 3C
%b = [0 -5 2 8]'; % 3C

%A = [5 -3 0 2; 2 6 -3 0; -1 2 4 -1; -2 -3 2 7]; % 3D
%b = [13 16 -11 10]'; % 3D

format long;

x=(A\b); % loest das GS

fehler=(5e-6 + 5e-6); % Fehler mit 5*10^-6
normv_A=norm(A); % Die Norm von A
normv_x=norm(x'); % die Norm von x
kappa_A=cond(A); % die Konditionszahl
delta_x=kappa_A * fehler * normv_x; % ∆X = Abweichung in der Matrix

intervall=[(x-delta_x) x (x+delta_x)]; % Intervall für die Werte aus x
disp("Loesung des GS = "), disp(x)
disp("Norm A = "), disp(normv_A)
disp("Norm x = "), disp(normv_x)
disp("Konditionierung der Matrix = "), disp(kappa_A)

disp("∆X (Abweichung) = "), disp(delta_x)
disp("Intervalle"), disp(intervall)