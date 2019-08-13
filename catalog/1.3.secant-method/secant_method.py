import math


# Secant method
def secante(f, xk_1, xk, tol):
    _iter = 1

    while (abs(xk - xk_1) / abs(xk)) > tol:
        x_temp = xk - (xk - xk_1) / (f(xk) - f(xk_1)) * f(xk)
		xk_1 = xk
		xk = x_temp
		_iter += 1

    return xk, _iter

# Prueba

if __name__ == "__main__":
    x0 = 0
    x1 = 1
    tol = 0.1
    func = lambda x: math.e**x - x - 2
    xk, _iter = secant (a, b, tol, func)
    print('xAprox = {}\nIteraciones = {}'.format(xAprox, _iter))
