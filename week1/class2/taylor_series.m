% Clear the workspace and close all figures
clear;
close all;

% Function to approximate the exponential function e^x using a series expansion
function eAprox = eF(x, n=50)
  % Initialize the approximation result
  eAprox = 0;

  % Loop to sum the series up to the n-th term
  for i = 0:n
    % Add the i-th term of the series to the approximation
    eAprox = eAprox + x^i / factorial(i);
  endfor

  return;
endfunction

% Function to approximate the sine function sin(x) using a series expansion
function sinAprox = sinF(x, n=50)
    sinAprox = 0;  % Initialize the approximation result

    % Loop to sum the series up to the n-th term
    for ind=0:n
        % Add the i-th term of the series to the approximation
        sinAprox = sinAprox + (-1)^ind * (x - pi / 2)^(2 * ind) / factorial(2 * ind);
    endfor

    return;
endfunction

% Main script
% Number of iterations for testing the functions
N = 10;

% Loop to compute and display approximations and actual values
for ind = 1:N
    % Calculate and print the approximation and actual value of e^x
    printf('e^%i; aprox=%5.4f, real=%5.4f\n', ind, eF(ind), exp(ind));
    
    % Calculate and print the approximation and actual value of sin(x)
    printf('sen(%5.4f); aprox=%5.4f, real=%5.4f\n\n', ind / N, sinF(ind / N), sin(ind / N));
endfor
