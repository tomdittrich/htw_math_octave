clear all;

% Uebungsblatt 12  Aufgabe 2
disp("")
disp("Aufgabe 2:")
disp("")

% p = q = 0.5
Wahrsch2 =  [0.3 0.28 0.12 0.12 0.1 0.08];
FanoCode2 = [ 0 10 010 110 111 011]
BitAnz2 =   [ 2 2 3 3 3 3]

% haette man jetzt auch mal auslagern koennen
function y = ErwWertFunction(x,n)
  y = x.*n;
endfunction

function y = EntropyFunction(u)
  y = u.*log2(u);
endfunction

ErwWert2 = sum(ErwWertFunction(Wahrsch2, BitAnz2))

EntropyIdeal2 = -sum(EntropyFunction(Wahrsch2))

EffektivitaetReal2 = EntropyIdeal2 /  ErwWert2
% trotzdem effektiv