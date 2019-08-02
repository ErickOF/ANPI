clear;
close all;


% Bisection method
function [xAprox, iter] = bisection (a, b, tol, f)
  if (f(a) * f(b) < 0)
    xAprox = (a + b) / 2;
    iter = 0;
        
    while (abs(f(xAprox)) > tol)
      if (f(a) * f(xAprox) < 0)
        b = xAprox;
      else
        a = xAprox;
      endif

      xAprox = (a + b) / 2;
      iter = iter + 1;
    endwhile
  else
    error("Condiciones no garantizan el cero de la funci�n");
  endif

  return;
endfunction


% Main
a = 0;
b = 2;
tol = 0.1;
func = @(x) e^x-x-2;
[xAprox, iter] = bisection (a, b, tol, func);
printf('xAprox = %f\nIteraciones = %i', xAprox, iter);
