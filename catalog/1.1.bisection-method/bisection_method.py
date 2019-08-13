import math


# Bisection method
def bisection(a, b, tol, f):
    if (f(a) * f(b) < 0):
        xAprox = (a + b) / 2
        _iter = 0

        while (abs(f(xAprox)) > tol):
            if (f(a) * f(xAprox) < 0):
                b = xAprox
            else:
                a = xAprox

            xAprox = (a + b) / 2
            _iter += 1
    else:
        raise ValueError("Condiciones no garantizan el cero de la función")

    return xAprox, _iter


if __name__ == '__main__':
    a = 0
    b = 2
    tol = 0.1
    func = lambda x: math.e**x - x - 2
    xAprox, _iter = bisection(a, b, tol, func)
    print('xAprox = {}\nIteraciones = {}'.format(xAprox, _iter))
