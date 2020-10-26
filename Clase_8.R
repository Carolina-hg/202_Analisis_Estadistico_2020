#Carolina Guadalupe Hernández García
#Matricula 2079747
#Fecha: 19 octubre
#Clase 8. "Regresión lineal"


dosel <- read.csv("canopy.csv", header=T)



op <- par(mfrow=c(2,2))
plot(dosel$LAI4, dosel$GLI)
plot(dosel$Cnpy, dosel$LAI4)
plot(dosel$Cnpy, dosel$GLI)
op <- par(mfrow=c(1,1))



cor.test(dosel$Cnpy, dosel$LAI4)



plot(dosel$Cnpy, dosel$LAI4, pch=19, ylim=c(0.8, 2.0))



lm.cnpy <- lm(dosel$LAI4 ~ dosel$Cnpy)
lm.cnpy
summary(lm.cnpy)
abline(lm.cnpy, col="red")
text(22, 1, "Y = 2.73 + (-0.04)* x")


residual <- resid(lm.cnpy)
predichos <- fitted(lm.cnpy)
resid.2 <- residual^2



cuadro <- round(data.frame(dosel$Cnpy, dosel$LAI4, residual, predichos, resid.2), 2)
sum(cuadro$resid.2)
sum(cuadro$residual)


an.lm <- anova(lm.cnpy)
an.lm
