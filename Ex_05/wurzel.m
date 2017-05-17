a = input(' a = ');
if a < 0; error(' Keine reelle Lösung '); end
tol = 1e-6;   % Abbruchschranke
x = a;
while abs(x^2-a) > tol;
  x = (x+a/x) / 2;
end
x
