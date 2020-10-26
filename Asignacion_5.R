#Carolina Guadalupe Hernández García
#Matricula 2074797
#Asignación 5. Correlaciones.

#Ejercicio 1. 

micorrizas <- read.csv("A5_1.csv")

summary(micorrizas)

boxplot(micorrizas$Altura ~ micorrizas$Tratamiento, xlab = "Tratamientos",
        ylab = "Altura", main = "Inoculación con micorrizas" )

#H0= No hay diferencias significativas en el efecto de inoculación con
#micorrizas sobre la altura de plántulas de Pinus pseudostrobus.

#H1= Existen diferencias significativas en el efecto de inoculación con
#micorrizas sobre la altura de plántulas de Pinus pseudostrobus.

var.test(micorrizas$Altura ~ micorrizas$Tratamiento)
shapiro.test(micorrizas$Altura)

t.test(micorrizas$Altura ~ micorrizas$Tratamiento, var.equal= TRUE)

#Reporte de datos: 
#valor de t= 11.74, df= 18, 
#La prueba de t arroja una probabilidad de 7.10e-10, por lo que se 
#rechaza la hipotesis nula. Si existen diferencia significativas entre los
#tratamientos. 
-------------
#Correlación:   
  
Grupo_I <- c(23.0, 17.4, 17.0, 20.5, 22.7, 24.0, 22.5, 22.7, 19.4, 18.8)
Grupo_II <- c(8.5, 9.6, 7.7, 10.1,9.7,13.2, 10.3, 9.1, 10.5, 7.4)

plot(Grupo_I, Grupo_II)
cor.test(Grupo_I, Grupo_II)


# Ejercicio 2.  -----------------------------------------------------------

suelo <- read.csv("A5.2.csv")
boxplot(suelo$CO ~ suelo$Muestreo, xlab = "Muestreo", ylab = "Carbono Orgánico",
        main= "Contenido de Carbono orgánico")

var.test(suelo$CO ~ suelo$Muestreo)
shapiro.test(suelo$CO)

#H0= No hay diferencias significativas en el contenido de Carbono orgánico en 
# el suelo de dos muestras tomadas en diferente temporada.

#H1= Existen diferencias significativas en el contenido de Carbono organico en
#el suelo de dos muestras tomadas en diferente temporada.

t.test(suelo$CO ~ suelo$Muestreo, paired= TRUE)

#Reporte de datos: 
#Valor de t= 1.4845  df= 9
#los resultados de la prueba de t demuestran una probabilidad de 0.17,
#por lo tanto, Se acepta la hipótesis nula. No hay diferencias significativas 
#entre las dos muestras.

#Correlación
  
Layer_1 <- c(1.59,1.39,1.64,1.17,1.27,1.58,1.64,1.53,1.21,1.48)
Layer_2 <- c(1.21,0.92,1.31,1.52,1.62,0.91,1.23,1.21,1.58,1.18)

plot(Layer_1, Layer_2) 
cor.test(Layer_1, Layer_2)

#Ejercicio 3. 
#1)

data(quakes)
head(quakes)
plot(quakes$depth, quakes$mag, xlab = "Profundidad", ylab = "Magnitud", 
     main = "Relación mag-profundidad", pch= 20, col= "pink")

#H0= La escala de Ritcher promedio de terremotos ocurridos en el transcurso 
#de un año es igual a 4.8.

#H1 = La escala de ritcher promedio de terremotos ocurridos en el transcurso
#de un año es diferente a 4.8

mean(quakes$mag)
ritcher <- subset(quakes, select = "mag")

t.test(ritcher, mu= 4.8)

#Reporte datos: 
#Valor de t= -14.101, df=999, media observada= 4.62, Valor de p= 2.2e-16
#Con base en el valor de probabilidad, se rechaza la hipótesis nula ya que 
#sí hay diferencias significativas entre la escala promedio que la pobación 
#creía y la escala promedio observada.

#2) 

#H0= La profundidad promedio del origen de un terremoto es de 309 km.
#H1= La profundidad promedio del origen de un terremoto es diferente a 309 km.

mean(quakes$depth)
orig <- subset(quakes, select = "depth")

t.test(orig, mu= 309)

cor.test(quakes$depth, quakes$mag)

st17 <- subset(quakes, stations == "17")
plot(st17$mag, st17$depth, xlab = "Magnitud", ylab = "Profundidad", 
     main = "Relación mag-profundidad estación No. 17", pch= 20, col= "brown")
cor.test(st17$mag, st17$depth)

#Reporte datos:
#Valor de t=0.3478, df=999, Media observada= 311.37, p-valor=0.728
#En base con los resultados de la prueba de t, se concluye en que se acepta
#la hipótesis nula, observandose igualdad entre la media teórica y la 
#observada.
#Correlación: Primeramente se realizó el análisis de la relacón entre las
#variables de profundidad-magnitud, mostrando una correlación de -0.230 con 
#significancia de 1.535e-13, concluyendo que no existe relación entre estas.

#Se procedio a realizar una segunda prueba entre las mismas variables pero
#con la restricción de únicamente en la estación "17".
#Correlación= -0.29, Valor p= 0.75, hay relación significativa.

