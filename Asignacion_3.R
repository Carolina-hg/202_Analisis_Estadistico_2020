#Carolina Guadalupe Hernández García 
#Matricula: 2074797
#Asignación 3. Inferencias sobre una población


#EJERCICIO 3.1

mdiametro <- read.csv("cuadro1.csv")
head(mdiametro)
mean(mdiametro$Diametro)

#H0= La media de los diamétros de los árboles de un rodal en un bosque templado
#es igual al registro que se tiene del diamétro típico promedio 16.5 del áera.

#H1= La media de los diamétros de los árboles de un rodal en un bosque templado
#es diferente al registro que se tiene del diámetro típico promedio 15.5 del área.

#¿Cuántas colas se debe utilizar?
#Se utilizara de dos colas ya que la H1 que se estaleció es de tipo
#"Diferente de"

diametros1 <- subset(mdiametro, select = "Diametro")

t.test(diametros1, mu= 15.5)

#Según los resultados de la Prueba de t, el valos de probabilidad= 0.1078 es
#mayor que 0.05, aceptandose de esta manera la HO.

#CONCLUSION: no existen diferencias significativas entre los diamétros de los 
#árboles de un rodal en un bosque templado y el diámetro típico promedio del 
#área.



# Ejercicio 3.2 -----------------------------------------------------------


costal <- c(87.7, 80.1, 77.28, 78.76, 81.52, 74.2, 80.71, 79.5, 77.87, 81.94, 
            80.7, 82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62, 81.4, 74.89,
            82.95, 73.59, 77.92, 77.18, 79.83, 81.23, 79.28, 78.44, 79.01, 80.47,
            76.23, 78.89, 77.14, 69.94, 78.54, 79.7, 82.45, 77.29, 75.52, 77.21,
            75.99, 81.94, 80.41, 77.7)

range(costal)


#H0: El peso neto medio del contenido de alimento para venado "Imperial" es 
#igual a 80 kg.


#H1: El peso neto medio del contenido de alimento para venado "Imperial" es 
#menor que 80 kg.


mean(costal)
t.test(costal, mu=80, alternative = "less")

#Se rechaza H0, por lo tanto, se concluye que sí existen diferencias 
#significativas entre el peso neto medio del contenido del costal anunciado en 
#el producto y la media observada. 
