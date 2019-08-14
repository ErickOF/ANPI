clear;
close all;


% Bisection method
function [xk, iter] = bisection (xk, xk_1, tol, f)
    iter = 1;

    while (abs(xk - xk_1) / abs(xk)) > tol
        xTemp = xk - (xk - xk_1) / (f(xk) - f(xk_1)) * f(xk);
        xk_1 = xk;
        xk = xTemp;
        iter = iter + 1;
    endwhile

    return;
endfunction


% Main
x0 = 0;
x1 = 1;
tol = 0.01;
func = @(x) e^(-x^2) - x;
[xk, iter] = bisection (x0, x1, tol, func);
printf('xk = %f\nIteraciones = %i', xk, iter);
