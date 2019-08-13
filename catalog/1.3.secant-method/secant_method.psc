// Función a la cual se le aplicará el método
Funcion valor <- f(x)
	e <- 2.718281828459045235360
    valor <- e^(-x^2) - x
FinFuncion

// Método de la secante
Funcion secante(xk_1, xk, tol)
    iter <- 1

    Mientras (abs(xk - xk_1) / abs(xk)) > tol Hacer
        x_temp = xk - (xk - xk_1) / (f(xk) - f(xk_1)) * f(xk)
		xk_1 <- xk
		xk <- x_temp
		iter = iter + 1
    Fin Mientras

    Escribir  "xAprox = " + ConvertirATexto(xk)
    Escribir  "Iteraciones = " + ConvertirATexto(iter)
Fin Funcion

// Prueba
Proceso main
    secante(0, 1, 0.01)
FinProceso
