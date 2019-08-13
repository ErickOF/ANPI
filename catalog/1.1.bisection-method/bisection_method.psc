// Función a la cual se le aplicará el método
Funcion valor <- f(x)
    e <- 2.718281828459045235360
    valor <- e^x - x - 2
FinFuncion

// Método de la bisección
Funcion biseccion(a, b, tol)
    Si f(a) * f(b) < 0 Entonces
        xAprox <- (a + b) / 2
        iter <- 0
        
        Mientras abs(f(xAprox)) > tol Hacer
            Si f(a) * f(xAprox) < 0 Entonces
                b <- xAprox
            SiNo
                a <- xAprox
            Fin Si
            
            xAprox <- (a + b) / 2
            iter <- iter + 1
        Fin Mientras

        Escribir  "xAprox = " + ConvertirATexto(xAprox)
        Escribir  "Iteraciones = " + ConvertirATexto(iter)
    SiNo
        Escribir "Condiciones no garantizan el cero de la función"
    Fin Si
Fin Funcion

// Prueba
Proceso main
    biseccion(0, 2, 0.1)
FinProceso
