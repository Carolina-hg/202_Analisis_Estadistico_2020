#Carolina Guadalupe Hernández García 
#Matricula 2074797
#Fecha: 10 sep 2020

# Problema 1 --------------------------------------------------------------

pinus <- 3140
mezquite <- 1453
encino <- 450
teka <-1200
juniperos <- 720
superficie <- c(pinus, mezquite, encino, teka, juniperos)
barplot(superficie)
sort(superficie, decreasing = TRUE)
barplot[sort(superficie, decreasing = TRUE)]
?barplot
reordenados <- sort(superficie, decreasing = TRUE)
barplot(reordenados)
plot(xmain = "Superficie reforestada", xlab = "Especies", ylab= "hectáreas", col= "green")
reordenados
table(superficie)
plot(x, reordenados)
mean(superficie)

# Problema 2 --------------------------------------------------------------

germinacion <- c(4,1,6,2,4,2,4,2,4,6,3,5,3,2,5,4,0,5,4,2,4,5,3,5,3,5,4,3,6,2)
mean(germinacion)
?standardeviation
"??standardeviation"
sd(germinacion)
