disp("");
disp("-- A --");
A1 = 0; % untere Grenze
A2 = pi; % obere Grenze
AX = [A1:0.01:A2]; % X Werte, wird für Trapez benötigt
AF = sin(AX); % Funktion, wird für Trapez benötigt
AFF = @(x) sin(x); % anonyme Funktion, für Simpson und Quad

AS = simpson(AFF, A1, A2) % Simpson
AQ = quad(AFF, A1, A2) % adaptive Simpson quadrature
AT = trapz(AX, AF) % Trapezoidal numerical integration

disp("");
disp("-- B --");
B1 = 0; % untere Grenze
B2 = pi/2; % obere Grenze
BX = [B1:0.01:B2]; % X Werte, wird für Trapez benötigt
BF = cos(BX); % Funktion, wird für Trapez benötigt
BFF = @(x) cos(x); % anonyme Funktion, für Simpson und Quad

BS = simpson(BFF, B1, B2) % Simpson
BQ = quad(BFF, B1, B2) % adaptive Simpson quadrature
BT = trapz(BX, BF) % Trapezoidal numerical integration

disp("");
disp("-- C --");
C1 = 1; % untere Grenze
C2 = 2.6; % obere Grenze
CX = [C1:0.01:C2]; % X Werte, wird für Trapez benötigt
CF = sqrt(1+exp(0.5*CX.^2)); % Funktion, wird für Trapez benötigt
CFF = @(x) sqrt(1+exp(0.5*x.^2)); % anonyme Funktion, für Simpson und Quad

CS = simpson(CFF, C1, C2) % Simpson
CQ = quad(CFF, C1, C2) % adaptive Simpson quadrature
CT = trapz(CX, CF) % Trapezoidal numerical integration

disp("");
disp("-- D --");
D1 = -1; % untere Grenze
D2 = 0; % obere Grenze
DX = [D1:0.01:D2]; % X Werte, wird für Trapez benötigt
DF = tan(DX); % Funktion, wird für Trapez benötigt
DFF = @(x) tan(x); % anonyme Funktion, für Simpson und Quad

DS = (simpson(DFF, D1, D2)) % Simpson
DQ = (quad(DFF, D1, D2)) % adaptive Simpson quadrature
DT = (trapz(DX, DF)) % Trapezoidal numerical integration

% Ergebnisse waren negativ, daher abs

disp("");
disp("-- E --");
E1 = 1; % untere Grenze
E2 = 2; % obere Grenze
EX = [E1:0.01:E2]; % X Werte, wird für Trapez benötigt
EF = (1-exp(-EX))./EX; % Funktion, wird für Trapez benötigt
EFF = @(x) (1-exp(-x))./x; % anonyme Funktion, für Simpson und Quad

ES = simpson(EFF, E1, E2) % Simpson
EQ = quad(EFF, E1, E2) % adaptive Simpson quadrature
ET = trapz(EX, EF) % Trapezoidal numerical integration

disp("");
disp("-- F --");
F1 = 1; % untere Grenze
F2 = 4; % obere Grenze
FX = [F1:0.01:F2]; % X Werte, wird für Trapez benötigt
FF = sqrt(1+(2*FX.^4)); % Funktion, wird für Trapez benötigt
FFF = @(x) sqrt(1+(2*x.^4)); % anonyme Funktion, für Simpson und Quad

FS = simpson(FFF, F1, F2) % Simpson
FQ = quad(FFF, F1, F2) % adaptive Simpson quadrature
FT = trapz(FX, FF) % Trapezoidal numerical integration

disp("");
disp("-- G --");
G1 = 0.5; % untere Grenze
G2 = 1; % obere Grenze
GX = [G1:0.01:G2]; % X Werte, wird für Trapez benötigt
GF = GX.^3 ./ (exp(GX) - 1); % Gunktion, wird für Trapez benötigt
GFF = @(x) x.^3 ./ (exp(x) - 1); % anonyme Gunktion, für Simpson und Quad

GS = simpson(GFF, G1, G2) % Simpson
GQ = quad(GFF, G1, G2) % adaptive Simpson quadrature
GT = trapz(GX, GF) % Trapezoidal numerical integration


disp("");
disp("-- H --");
H1 = 1; % untere Hrenze
H2 = 3; % obere Hrenze
HX = [H1:0.01:H2]; % X Werte, wird für Trapez benötigt
HF = exp(HX) ./ HX.^2; % Hunktion, wird für Trapez benötigt
HFF = @(x) exp(x) ./ x.^2; % anonyme Hunktion, für Simpson und Quad

HS = simpson(HFF, H1, H2) % Simpson
HQ = quad(HFF, H1, H2) % adaptive Simpson quadrature
HT = trapz(HX, HF) % Trapezoidal numerical integration