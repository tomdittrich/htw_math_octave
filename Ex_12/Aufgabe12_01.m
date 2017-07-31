clear all;  

% Uebungsblatt 12  Aufgabe 1
disp("Aufgabe 1:")
disp("")

%           A   B    C   D    E    F
Wahrsch1 = [0.5 0.25 0.1 0.08 0.05 0.02];
FanoCode1= [ 0 10 110 1110 11110 11111 ] % siehe Hefter
BitAnz1 =  [ 1 2 3 4 5 5 ]

function y = ErwWertFunction(x,n)
  y = x.*n;
endfunction

function y = EntropyFunction(u)
  y = u.*log2(u);
endfunction

% pro kodiertes Zeichen werden so viele Bits erwartet:
ErwWert1 = sum(ErwWertFunction(Wahrsch1, BitAnz1))

EntropyIdeal1 = -sum(EntropyFunction(Wahrsch1))

EffektivitaetReal1 = EntropyIdeal1 /  ErwWert1