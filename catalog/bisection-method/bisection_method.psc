// Función a la cual se le aplicará el método
Funcion valor <- f(x)
    // Se define la constante e
    e <- 2.7182818284590452353602875
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
    SiNo
        Escribir "Condiciones no garantizan el cero de la funci�n"
    Fin Si
    
    Escribir  "xAprox = " + ConvertirATexto(xAprox)
    Escribir  "Iteraciones = " + ConvertirATexto(iter)
Fin Funcion

// Prueba
Proceso main
    biseccion(0, 2, 0.1)
FinProceso
