#Carolina Guadalupe Hernández García 
#Matricula 2074797
#Fecha: 12 octubre 2020
#Clase 7. Correlación 


data(iris)
head(iris)

plot(iris$Sepal.Length, iris$Sepal.Width)

cor.test(iris$Sepal.Length, iris$Sepal.Width)

setosa <- subset(iris, Species == "setosa")
plot(setosa$Sepal.Length, setosa$Sepal.Width)

cor.test(setosa$Sepal.Length, setosa$Sepal.Width)

versicolor <- subset(iris, Species =="versicolor")
plot(versicolor$Sepal.Length, versicolor$Sepal.Width, pch= 20, col= "green", 
     xlab = "Largo de sepalo (mm)", ylab= "Ancho de sepalo (mm)",
     main= "Especie Versicolor")

cor.test(versicolor$Sepal.Length, versicolor$Sepal.Width)

virginica <- subset(iris, Species == "virginica")
plot(virginica$Sepal.Length, virginica$Sepal.Width)

cor.test(virginica$Sepal.Length, virginica$Sepal.Width)
0.4572278*0.4572278
