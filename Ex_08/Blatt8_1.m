zp= [4 0 0 0 -4]; % Zaehlerpoly
np1= [1 -2]; % Nennerpoly1
np2= [1 2]; % Nennerpoly2

disp("Nennerpolynom")
np= conv(np1,np2) % Nennerpolynom, Multiplikation mit Convolution

disp("Nullstellen des ZählerPoly = ")
r=roots(zp) % Spaltenvektor der Nullstellen

disp("qp = ganzrational")
disp("rp = Rest")
[qp,rp]=deconv(zp,np) 
% Deconvolutin, qp = ganzrationale Funktion , rp = Rest
% Partialbruch ergibt sich aus Rest: 60/x^2-4

disp("Partialbruchzerlegung rp")
[r,xP,g]=residue(rp,np) 
% r Zähler Partialbrüche
% xP Polstellen PB
% g ganzrationaler Teil
% (15/(x-2)) + (-15/(x-(-2)))
