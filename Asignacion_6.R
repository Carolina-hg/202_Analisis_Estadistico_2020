#Carolina Guadalupe Hernández García. 
#Matricula 2049747

#Ejercicio 1.

erupciones <- read.csv("erupciones.csv")
plot(erupciones, xlab= "Tiempo de espera entre erupciones (min)",
     ylab= "Duración de las erupciones (min)",  pch = 19)

mean(erupciones$eruptions)
mean(erupciones$waiting)
sd(erupciones$eruptions)
sd(erupciones$waiting)
var(erupciones$eruptions)
var(erupciones$waiting)

cor.test(erupciones$eruptions, erupciones$waiting)

#La prueba de correlación muestra un coeficiente de relación = 0.90 y un valor de p= 2.2e-16. 
#Por lo tanto, si existe relación significativa entre el tiempo de espera entre erupciones y la duración de las erupciones.

#Regresión lineal. 

#H0= La relación entre el tiempo de espera entre erupciones y la duración de las erupciones es igual.
#H1= Larelación entre el tiempo de espera entre erupciones y la duración de las erupciones es diferente.

lm.erup <- lm(erupciones$eruptions ~ erupciones$waiting)
lm.erup
summary(lm.erup)

abline(lm.erup, col= "red")

#Valor intercepto (alfa)= -1.87
#Valor de la pendiente (beta) = 0.075
#Valor p= 2.2e-16 Por lo tanto si son significativas


residual2 <- resid(lm.erup)
predichos2 <- fitted(lm.erup)
residual.3 <- residual2^2

Cuadro1 <- round(data.frame(erupciones$eruptions, erupciones$waiting, residual2, predichos2, residual.3), 2)
head(Cuadro1)
sum(Cuadro1$residual.3)
sum(Cuadro1$residual2)

An_lm <- anova(lm.erup)
An_lm

#Regresión significativa



# Ejercicio 2. ------------------------------------------------------------

p_ariz <- read.csv("p_arizonica.csv")
plot(p_ariz$DAP, p_ariz$edad, xlab = "Diametro a la altura de pecho", ylab= "Edad", pch= 20)

lm.diam <- lm(p_ariz$edad ~ p_ariz$DAP)
lm.diam
summary(lm.diam)

#Valor intercepto= 3.65
#valor de la pendiente= 1.43 
#p-valor= 0.10
#Por lo tanto alfa y beta no son significativos.

resid_1 <- resid(lm.diam)
pred <- fitted(lm.diam)
resid_2 <- resid_1^2

cuad_2 <- round(data.frame(p_ariz$edad, p_ariz$DAP, resid_1, pred,resid_2), 2)
cuad_2
sum(cuad_2$resid_2) 
sum(cuad_2$resid_1)


Av_lm <- anova(lm.diam)
Av_lm




