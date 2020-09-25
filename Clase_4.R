#Carolina Guadalupe Hernández García 
#Matricula: 2074797
#Clase 4: 
#Fecha: 21 septiembre 2020

conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto)
names(conjunto)
summary(conjunto)

length(conjunto$diametro)


# medidas tendencia central -----------------------------------------------
sum(conjunto$Altura)/length(conjunto$Altura)
mean(conjunto$Altura)
range(conjunto$Altura)
fivenum(conjunto$Altura)
boxplot(conjunto$Altura, col = "orange")
boxplot(conjunto$Diametro ~ conjunto$Especie, col= "orange",
        xlab = "Especies",
        ylab = "Diametro" )

steam(conjunto$Diametro)

hist(conjunto$dDiametro,
     ylim = c(0,14))


# Medidas de dispersión ---------------------------------------------------

var(conjunto$Diametro)
sqrt(var(conjunto$Diametro))
sd.diam <- sd(conjunto$Diametro)

quantile(conjunto$Diametro, 0.5)
quantile(conjunto$Diametro, 0.75)
quantile(conjunto$Diametro, 0.25)


# Coeficiente de variación ------------------------------------------------

sd.diam/mean(conjunto$Diametro)*100

