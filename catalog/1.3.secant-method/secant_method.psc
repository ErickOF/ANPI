// Funcion a la cual se le aplicara el metodo
Funcion valor <- f(x)
    e <- 2.718281828459045235360
    valor <- e^(-x^2) - x
FinFuncion

Funcion secante(xk_1, xk, tol)
    // Metodo de la Secante
    // @param xk_1 - valor inicial en la iteracion 0
    // @param xk - valor inicial en la iteracion 1
    // @param tol - tolerencia del algoritmo

    iter <- 1

    //  Repetir hasta que x el error sea mas pequenio que la tolerancia
    Mientras (abs(xk - xk_1) / abs(xk)) > tol Hacer
        // Nuevo valor de x
        xTemp = xk - (xk - xk_1) / (f(xk) - f(xk_1)) * f(xk)
        // Actualizar el valor anterior y el valor actual
        xk_1 <- xk
        xk <- xTemp
        // Actualizar las iteraciones
        iter = iter + 1
    Fin Mientras

    // Mostrar los resultados
    Escribir  "xk = " + ConvertirATexto(xk)
    Escribir  "Iteraciones = " + ConvertirATexto(iter)
Fin Funcion

// Prueba
Proceso main
    // Valores iniciales
    x0 <- 0
    x1 <- 1
    // Tolerancia
    tol <- 0.01
    // Llamado de la funcion
    secante(x0, x1, tol)
FinProceso
