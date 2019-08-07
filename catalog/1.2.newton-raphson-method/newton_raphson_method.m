clear;
close all;

pkg load symbolic;


% Newton Raphson method
function [xAprox, iter] = newtonRaphson (func, x0, tol)
    xAprox(1) = x0;
    iter = 0;

    syms f(x);
    f(x) = func;
    
    while (abs(func(xAprox(end))) > tol)
        xk = xAprox(end);
        df = diff(f);
        xAprox(end + 1) = xk - func(xk) / double(df(xk));
        iter = iter + 1;
    endwhile

    return;
endfunction


% Main
x0 = 3 / 4;
tol = 0.0000000001;
func = @(x) cos(2 * x).^2 - x.^2;
[xAprox, iter] = newtonRaphson (func, x0, tol);
printf('xAprox = [');
printf(' %f ', xAprox);
printf(']\nIteraciones = %i', iter);

% Plot
x = 0:1:iter;
y = abs(func(xAprox));
plot(x, y);
xlabel('iteraciones');
ylabel('|f(xk)|');
