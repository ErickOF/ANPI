import math
import matplotlib.pyplot as plt
import numpy as np
from scipy import misc


# Newton Raphson method
def newtonRaphson(f, x0, tol):
    xAprox = np.array([x0])
    _iter = 0

    while (abs(f(xAprox[-1])) > tol):
        xk = xAprox[-1]
        df = misc.derivative(f, xk, dx=1e-6)
        xAprox = np.append(xAprox, xk - f(xk) / df)
        _iter += 1

    return xAprox, _iter

def plot_function(x, y):
    plt.plot(x, y)
    plt.show()


if __name__ == '__main__':
    x0 = 3 / 4
    tol = 0.0000000001
    func = lambda x: (np.cos(2 * x))**2 - x**2
    xAprox, _iter = newtonRaphson(func, x0, tol)
    print('xAprox = {}\nIteraciones = {}'.format(xAprox[-1], _iter))
    plot_function(np.linspace(0, _iter, _iter + 1), np.abs(func(xAprox)))
