import math


# Secant method
def secant(xk_1, xk, tol, f):
    _iter = 1

    while (abs(xk - xk_1) / abs(xk)) > tol:
        x_temp = xk - (xk - xk_1) / (f(xk) - f(xk_1)) * f(xk)
        xk_1 = xk
        xk = x_temp
        _iter += 1

    return xk, _iter

# Prueba
if __name__ == '__main__':
    x0 = 0
    x1 = 1
    tol = 0.01
    func = lambda x: math.e**(-x**2) - x
    xk, _iter = secant(x0, x1, tol, func)
    print('xk = {}\nIteraciones = {}'.format(xk, _iter))
