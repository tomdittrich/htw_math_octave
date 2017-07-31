% Summierte Simpson'sche Regel
function y = simpson(funk, a, b)
  n = 10; % gewünschte Anzahl an Doppel-Streifen, desto höher, desto genauer
  h = (b - a) / (2 * n); % Schrittweite der einfachen Streifen
  x_i = [a : h : b]; % Stützstellen
  y_k = feval(funk, x_i); % Stützwerte
  
  Epsilon_0 = y_k(1) + y_k((2 * n) + 1);
  
  Epsilon_1 = 0;
  i = 2;
  while (i <= (2*n)+1)
    Epsilon_1 = Epsilon_1 + y_k(i);
    i = i + 2;
  endwhile
  
  Epsilon_2 = 0;
  i = 3;
  while (i <= 2*n)
    Epsilon_2 = Epsilon_2 + y_k(i);
    i = i + 2;
  endwhile
  
  y = (Epsilon_0 + 4*Epsilon_1 + 2*Epsilon_2) * h / 3;
endfunction 