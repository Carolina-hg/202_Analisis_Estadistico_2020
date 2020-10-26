#Carolina Guadalupe Hernández García
#Matricula 2074797

#Ejercicio 1. 

speed <- c(2,3,5,9,14,24,29,34)
abundance <- c(6,3,5,23,16,12,48,43)

efimeras <- data.frame(cbind(speed,abundance))
efimeras

plot(efimeras, main= "Efímeras (Ecdyonurus dispar)", col= "red")
#H0= No existe correlación significativa entre la velocidad del arroyo y la abundancia de efímeras (Ecdyonurus dispar)
#H1= Si existe una relación significativa entre la velocidad del arroyo y la abundancia de efímeras (Ecdyonurus dispar)

cor.test(abundance,speed)

#Reporte: df= 6, p- valor= 0.008
#El coeficiente de correlación muestra un valor de 0.84, mientras que el valor de probabilidad resultó en 0.008, aceptándose la hipótesis nula.
#concluyendo que si existe relación Significativa entre la velocidad del arroyo y la abundancia de Ecdyonurus dispar. 


# Ejercicio 2.  -----------------------------------------------------------

suelo <- read.csv("est_suelo.csv")

plot(suelo$N, suelo$Ph, xlab = "Nitrógeno", ylab = "pH")
cor.test(suelo$Ph, suelo$N)

plot(suelo$Dens, suelo$Ph, xlab = "Densidad", ylab = "pH")
cor.test(suelo$Ph, suelo$Dens)

plot(suelo$P, suelo$Ph, xlab = "Fósforo", ylab = "pH")
cor.test(suelo$Ph, suelo$P)

plot(suelo$Ca, suelo$Ph, xlab = "Calcio", ylab = "pH")
cor.test(suelo$Ph, suelo$Ca)

plot(suelo$Mg, suelo$Ph, xlab = "Magnesio", ylab = "pH")
cor.test(suelo$Ph, suelo$Mg)

plot(suelo$K, suelo$Ph, xlab = "Potasio", ylab = "pH")
cor.test(suelo$Ph, suelo$K)

plot(suelo$Na, suelo$Ph, xlab = "Sodio", ylab = "pH")
cor.test(suelo$Ph, suelo$Na)

#reporte: 
conjunto <- c("pH-N", "pH-Dens", "pH-P", "pH-Ca", "pH-Mg", "pH-K", "pH-Na")
r <- c(0.38,-0.77,0.42,0.54,-0.61,0.37,-0.71)
p_valor <- c(0.38,0.04,0.34,0.20,0.14,0.41,0.07)

data.frame(conjunto,r,p_valor)
#Únicamente el conjunto entre pH-Dens mostró una relación negativa significativa.


# Ejercicio 3.  -----------------------------------------------------------

anscombe <- read.csv("anscombe.csv")
anscombe

plot(anscombe$x1, anscombe$y1, xlab= "X1", ylab= "y1", pch= 20, col= "orange")
cor.test(anscombe$x1, anscombe$y1)

plot(anscombe$x2, anscombe$y2, xlab= "X2", ylab= "y2", pch= 20, col= "orange")
cor.test(anscombe$x2, anscombe$y2)

plot(anscombe$x3, anscombe$y3, xlab= "X3", ylab= "y3", pch= 20, col= "orange")
cor.test(anscombe$x3, anscombe$y3)

plot(anscombe$x4, anscombe$y4, xlab= "X4", ylab= "y4", pch= 20, col= "orange")
cor.test(anscombe$x4, anscombe$y4)


