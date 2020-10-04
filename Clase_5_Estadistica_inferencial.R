#Carolina Guadalupe Hernandez García
#Matricula 2074797
#Clase 5. "Estadistica inferencial" fecha: 28 septiembre 2020
#Una muestra(una media de datos observados vs una media teorética)


data(iris)
head(iris)
str(iris)
sepal <- iris[,1]

#H0 = La media de la longitud de los sepalos producidos en el vivero "Carolina" es igual a la media
#teorética 6mm establecido porel club de jardineria "González".

#H1= La media de la longitud de los sepalos producidos en el vivero "Carolina" es diferente a la media
#teorética 6mm establecido por el club de jardineria "González"


sepal
range(sepal)
mean(sepal)

#media teorética 6.0 mm logitud del sepalo

t.test(sepal, mu=6)


t.test(iris$Sepal.Width, mu=3.1)

var(iris$Sepal.Width)
shapiro.test(iris$Sepal.Width)
hist(iris$seSepal.Width)