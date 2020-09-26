#Asignación 2: Uso de restricciones y estadísticas descriptivas
#Carolina Guadalupe Hernández García
#Matricula: 2074797

Importar datos de trabajo

conjunto <- read.csv("cuadro1.csv")

H.media <- subset(conjunto, Altura <= mean(conjunto$Altura))
H.media                  

H.16 <- subset(conjunto, Altura < 16.5)


Vecinos_3 <- subset(conjunto, Vecinos  <= 3) #Se utilizó guión bajo (_) en el 
#nombre del objeto ya que si se utiliza guión ( - ) R lo toma como operación 
#y marca error. 
Vecinos_4 <- subset(conjunto, Vecinos > 4)

DBH_media <- subset(conjunto, Diametro < mean(conjunto$Diametro))
DBH_16 <- subset(conjunto, Diametro > 16)

subset(conjunto, Especie == "C")
subset(conjunto, Especie == c("H","F"))

which(conjunto$Diametro <= 16.9)
which(conjunto$Altura > 18.5)     

Visualización de datos


hist(H.media$Altura, xlab = "Datos menores al promedio", main = "H.media")
hist(H.16$Altura, xlab = "Datos menores a 16.5", main = "H.16")

hist(Vecinos_3$Vecinos, xlab = "Vecinos <= 3", main = "vecino_3")
hist(Vecinos_4$Vecinos, xlab = "vecinos > 4", main = "Vecino_4")

hist(DBH_media$Diametro, xlab = "Diametros menores a la media", main = "DBH_media")
hist(DBH_16$Diametro, xlab = "Diametros mayores a 16", main = "DBH_16")

Estadísticas básicas

mean(conjunto$Altura) 
mean(H.media$Altura) 
mean(H.16$Altura)

sd(conjunto$Altura)
sd(H.media$Altura)
sd(H.16$Altura)

mean(conjunto$Vecinos) 
mean(Vecinos_3$Vecinos) 
mean(Vecinos_4$Vecinos)

sd(conjunto$Vecinos) 
sd(Vecinos_3$Vecinos) 
sd(Vecinos_4$Vecinos)

mean(conjunto$Diametro) 
mean(DBH_media$Diametro) 
mean(DBH_16$Diametro)

sd(conjunto$Diametro) 
sd(DBH_media$Diametro) 
sd(DBH_16$Diametro)

Líneas de comando en R

library(repmis)

conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

head(conjunto)
