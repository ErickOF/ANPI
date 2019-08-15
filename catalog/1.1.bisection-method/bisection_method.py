import math


def bisection(a, b, tol, f):
    '''
    Metodo de la biseccion
    @param a - limite inferior del intervalo
    @param b - limite superior del intervalo
    @param tol - tolerencia del algoritmo
    @param f - funcion a la cual se le aplicara el algoritmo

    @return xAprox - valor aproximado de x
    @return _iter - iteraciones necesarias para aproximar x
    '''
    
    # Validar la condicion para encontrar el cero
    if (f(a) * f(b) < 0):
        # Valor inicial de x
        xAprox = (a + b) / 2
        _iter = 0

        # Repetir hasta que el x se acerque al cero
        while (abs(f(xAprox)) > tol):
            # Verificar cual es el nuevo intervalo de la funcion
            if (f(a) * f(xAprox) < 0):
                b = xAprox
            else:
                a = xAprox

            # Actualizar el valor de x y de las iteraciones
            xAprox = (a + b) / 2
            _iter += 1
    else:
        raise ValueError("Condiciones no garantizan el cero de la función")

    return xAprox, _iter


if __name__ == '__main__':
    # Limites
    a = 0
    b = 2
    # Tolerancia
    tol = 0.1
    # Funcion a la cual se le aplicara el metodo
    func = lambda x: math.e**x - x - 2
    # Llamado de la funcion
    xAprox, _iter = bisection(a, b, tol, func)
    print('xAprox = {}\nIteraciones = {}'.format(xAprox, _iter))
