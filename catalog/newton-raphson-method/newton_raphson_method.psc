// Funcion a la cual se le aplicará el método
Funcion valor <- f(x)
	valor <- (cos(2*x))^2 - x^2
FinFuncion

// Derivada de la funcion a la cual se le aplicará el método
Funcion valor <- f_derivada(x)
	valor <- -4*sen(2*x)*cos(2*x) - 2*x
FinFuncion

// Metodo de Newton Raphson
Funcion newton_raphson(x0, tol)
	xAprox = x0
	iter <- 0

	Mientras abs(f(xAprox)) > tol Hacer
		xAprox = xAprox - f(xAprox)/f_derivada(xAprox)
		iter <- iter + 1
	Fin Mientras
	
	Escribir  "xAprox = " + ConvertirATexto(xAprox)
	Escribir  "Iteraciones = " + ConvertirATexto(iter)
Fin Funcion

// Prueba
Proceso main
	newton_raphson(3/4, 0.0001)
FinProceso
