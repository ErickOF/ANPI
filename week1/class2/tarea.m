% Close all figures and clear the workspace
close all;
clear;

% Function to compute the current tolerance for a given m
function currentTol = computeTol(m)
  % Compute the current tolerance using the given formula
  currentTol = 2^(2 * (m + 1)) / (factorial(m) * (2 * (m + 1) + 1));
endfunction

% Function to approximate an integral using a specified tolerance
function [aprox, m] = integralExample(tol)
  % Initialize the approximation and m
  aprox = 0;
  m = -1;
  % Set initial tolerance to a value greater than tol
  currentTol = 1;

  % Loop to approximate the integral until the desired tolerance is achieved
  while (currentTol > tol)
    % Increment m for the next term
    m = m + 1;

    % Update the approximation using the series formula
    aprox = aprox + (-1)^m * 2^(2 * m) / (factorial(m) * (2 * m + 1));

    % Compute the current tolerance for the current m
    currentTol = computeTol(m);
  endwhile
endfunction

% Main script
% Call the 'integralExample' function with a tolerance of 0.000001
tol = 0.000001
[aprox, m] = integralExample(tol);

% Print the results
printf('Aprox = %f, m = %i', aprox, m);
