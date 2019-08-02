clear;
close all;


function eAprox = eF (x, n=50)
  eAprox = 0;

  for i=0:n
    eAprox = eAprox + x**i / factorial(i);
  endfor
  
  return;
endfunction

function sinAprox = sinF (x, n=50)
  sinAprox = 0;

  for i=0:n
    sinAprox = sinAprox + (-1)**i * (x - pi/2)**(2*i) / factorial(2*i);
  endfor

  return;
endfunction


% Main
N = 10
for i=1:N
  printf('e^%i; aprox=%5.4f, real=%5.4f\n', i, eF(i), exp(i));
  printf('sen(%5.4f); aprox=%5.4f, real=%5.4f\n\n', i/N, sinF(i/N), sin(i/N));
endfor
