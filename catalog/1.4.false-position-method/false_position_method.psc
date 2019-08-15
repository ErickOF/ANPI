// Funcion a la cual se le aplicara el metodo
Funcion valor <- f(x)
    valor <- cos(x) - x
FinFuncion

Funcion falsaPosicion(a, b, tol)
    // Metodo de la Falsa Position
    // @param a - limite inferior del intervalo
    // @param b - limite superior del intervalo
    // @param tol - tolerencia del algoritmo
    
    // Validar la condicion para encontrar el cero
    Si f(a) * f(b) < 0 Entonces
        // Valor inicial de x_k y x_{k-1}
        xk_1 <- b
        xk <- b - (b - a) / (f(b) - f(a)) * f(b)
        iter <- 2
        
        // Repetir hasta que x el error sea mas pequenio que la tolerancia
        Mientras abs((xk - xk_1) / xk) > tol Hacer
            ck <- 0
            // Verificar cual es el nuevo intervalo de la funcion
            // y el valor de ck
            Si f(a) * f(xk) < 0 Entonces
                b <- xk
                ck <- a
            SiNo
                a <- xk
                ck <- b
            Fin Si
            
            // Calcular el nuevo valor con el metodo de la secante
            xAprox <- xk - (xk - ck) / (f(xk) - f(ck)) * f(xk)
            xk_1 <- xk
            xk <- xAprox
            iter <- iter + 1
        Fin Mientras
        
        // Mostrar los resultados
        Escribir  "xk = " + ConvertirATexto(xk)
        Escribir  "Iteraciones = " + ConvertirATexto(iter)
    SiNo
        Escribir "Condiciones no garantizan el cero de la función"
    Fin Si
Fin Funcion

// Prueba
Proceso main
    // Limites
    a <- 0.5
    b <- PI / 4
    // Tolerencia
    tol <- 0.00001
    // Llamado de la funcion
    falsaPosicion(a, b, tol)
FinProceso
