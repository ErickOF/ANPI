// Función a la cual se le aplicará el método
Funcion valor <- f(x)
    valor <- (cos(2 * x))^2 - x^2
FinFuncion

// Derivada de la función a la cual se le aplicará el método
Funcion valor <- fDerivada(x)
    valor <- -4 * sen(2 * x) * cos(2 * x) - 2 * x
FinFuncion

// Método de Newton Raphson
Funcion newtonRaphson(x0, tol)
    xAprox = x0
    iter <- 0

    Mientras abs(f(xAprox)) > tol Hacer
        xAprox = xAprox - f(xAprox) / fDerivada(xAprox)
        iter <- iter + 1
    Fin Mientras
    
    Escribir  "xAprox = " + ConvertirATexto(xAprox)
    Escribir  "Iteraciones = " + ConvertirATexto(iter)
Fin Funcion

// Prueba
Proceso main
    newtonRaphson(3 / 4, 0.0000001)
FinProceso
