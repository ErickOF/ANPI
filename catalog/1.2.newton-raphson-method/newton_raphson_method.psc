// Funcion a la cual se le aplicara el metodo
Funcion valor <- f(x)
    valor <- (cos(2 * x))^2 - x^2
FinFuncion

// Derivada de la funcion a la cual se le aplicara el metodo
Funcion valor <- fDerivada(x)
    valor <- -4 * sen(2 * x) * cos(2 * x) - 2 * x
FinFuncion

Funcion newtonRaphson(x0, tol)
    // Metodo de Newton Raphson
    // @param x0 - valor inicial
    // @param tol - tolerencia del algoritmo

    // Valor incial de x
    xAprox = x0
    iter <- 0

    // Repetir hasta que x se haya acercado al cero de la funcion
    Mientras abs(f(xAprox)) > tol Hacer
        // Actualizar el valor de x y las iteraciones
        xAprox = xAprox - f(xAprox) / fDerivada(xAprox)
        iter <- iter + 1
    Fin Mientras
    
    // Mostrar los resultados
    Escribir  "xAprox = " + ConvertirATexto(xAprox)
    Escribir  "Iteraciones = " + ConvertirATexto(iter)
Fin Funcion

// Prueba
Proceso main
    // Valor inicial
    x0 <- 3 / 4;
    // Tolerancia
    tol = 0.0000000001
    // Llamado de la funcion
    newtonRaphson(x0, tol)
FinProceso
