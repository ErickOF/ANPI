import math
import matplotlib.pyplot as plt
import numpy as np
from scipy import misc


def newtonRaphson(f, x0, tol):
    '''
    Metodo de Newton Raphson
    @param f - funcion a la cual se le aplicara el algoritmo
    @param x0 - valor inicial
    @param tol - tolerencia del algoritmo

    @return xAprox - valor aproximado de x
    @return iter - iteraciones necesarias para aproximar x
    '''

    # Valor incial de x
    xAprox = np.array([x0])
    _iter = 0

    # Repetir hasta que x se haya acercado al cero de la funcion
    while (abs(f(xAprox[-1])) > tol):
        # Obtener el valor de x_k
        xk = xAprox[-1]
        # Derivar la funcion
        df = misc.derivative(f, xk, dx=1e-6)
        # Actualizar el valor de x y las iteraciones
        xAprox = np.append(xAprox, xk - f(xk) / df)
        _iter += 1

    return xAprox, _iter

def plotFunction(x, y):
    '''
    Grafica la funcion
    @param x - valores del eje x
    @param y - valores del eje y
    '''
    plt.plot(x, y)
    plt.show()


if __name__ == '__main__':
    # Valor inicial
    x0 = 3 / 4
    # Tolerancia
    tol = 0.0000000001
    # Funcion a la cual se le aplica el metodo
    func = lambda x: (np.cos(2 * x))**2 - x**2
    # Llamado de la funcion
    xAprox, _iter = newtonRaphson(func, x0, tol)
    print('xAprox = {}\nIteraciones = {}'.format(xAprox[-1], _iter))
    # Graficar funcion
    plotFunction(np.linspace(0, _iter, _iter + 1), np.abs(func(xAprox)))
