// Funcion a la cual se le aplicara el metodo
Funcion valor <- f(x)
    e <- 2.718281828459045235360
    valor <- e^x - x - 2
FinFuncion

Funcion biseccion(a, b, tol)
    // Metodo de la biseccion
    // @param a - limite inferior del intervalo
    // @param b - limite superior del intervalo
    // @param tol - tolerencia del algoritmo

    // Validar la condicion para encontrar el cero
    Si f(a) * f(b) < 0 Entonces
        // Valor inicial de x
        xAprox <- (a + b) / 2
        iter <- 0
        
        // Repetir hasta que el x se acerque al cero
        Mientras abs(f(xAprox)) > tol Hacer
            // Verificar cual es el nuevo intervalo de la funcion
            Si f(a) * f(xAprox) < 0 Entonces
                b <- xAprox
            SiNo
                a <- xAprox
            Fin Si
            
            // Actualizar el valor de x y de las iteraciones
            xAprox <- (a + b) / 2
            iter <- iter + 1
        Fin Mientras

        // Mostrar los resultados
        Escribir  "xAprox = " + ConvertirATexto(xAprox)
        Escribir  "Iteraciones = " + ConvertirATexto(iter)
    SiNo
        Escribir "Condiciones no garantizan el cero de la función"
    Fin Si
Fin Funcion

// Prueba
Proceso main
    // Limites
    a <- 0
    b <- 2
    // Tolerencia
    tol <- 0.1
    // Llamado de la funcion
    biseccion(a, b, tol)
FinProceso
