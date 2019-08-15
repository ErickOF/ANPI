import math


def secant(xk_1, xk, tol, f):
    '''
    Metodo de la Secante
    @param xk_1 - valor inicial en la iteracion 0
    @param xk - valor inicial en la iteracion 1
    @param tol - tolerencia del algoritmo
    @param f - funcion a la cual se le aplicara el algoritmo

    @return xk - valor aproximado de x en la iteracion k
    @return _iter - iteraciones necesarias para aproximar x
    '''

    _iter = 1

    # Repetir hasta que x el error sea mas pequenio que la tolerancia
    while (abs(xk - xk_1) / abs(xk)) > tol:
        # Nuevo valor de x
        xTemp = xk - (xk - xk_1) / (f(xk) - f(xk_1)) * f(xk)
        # Actualizar el valor anterior y el valor actual
        xk_1 = xk
        xk = xTemp
        # Actualizar las iteraciones
        _iter += 1

    return xk, _iter


# Prueba
if __name__ == '__main__':
    # Valores iniciales
    x0 = 0
    x1 = 1
    # Tolerancia
    tol = 0.01
    # Funcion a la cual se le aplica el metodo
    func = lambda x: math.e**(-x**2) - x
    # Llamado de la funcion
    xk, _iter = secant(x0, x1, tol, func)
    print('xk = {}\nIteraciones = {}'.format(xk, _iter))
