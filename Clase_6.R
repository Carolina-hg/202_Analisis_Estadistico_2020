#Carolina Guadalupe Hernández García 
#Matricula 2074797
#Fecha: 05 octubre 2020
#Clase 6. Pruebas de t para muestras dependientes e independientes


vivero <- read.csv("Ejemplo_2.csv")
summary(vivero)

boxplot(vivero$IE ~ vivero$Tratamiento)

var.test(vivero$IE ~ vivero$Tratamiento)
shapiro.test(vivero$IE)

vivero$IET <- log(vivero$IE + 1)#en caso de que no haya una distribucion normal

shapiro.test(vivero$IET)

t.test(vivero$IE ~ vivero$Tratamiento, var.equal= TRUE)
boxplot(vivero$IET ~ vivero$Tratamiento)



#Variables dependientes

inventario <- read.csv("InventarioSitios.csv")

boxplot(inventario$TEMPCOMB ~ inventario$Sitio)

var.test(inventario$TEMPCOMB ~ inventario$Sitio)
shapiro.test(inventario$TEMPCOMB)

t.test(inventario$TEMPCOMB ~ inventario$Sitio, paired = TRUE)


hist(inventario$TEMPCOMB)    
