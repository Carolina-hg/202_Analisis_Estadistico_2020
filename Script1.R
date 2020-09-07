# Carolina Guadalupe Hernández García
# Matrícula 2074797
# Fecha: 07 septiembre 2020

# Codigo inicial ----------------------------------------------------------

2+2
log(10)
sqrt(14)

# Histograma -------------------------------------------------------------
set.seed(123)
ejemplo <-rnorm(n = 10000, mean = 0, sd = 1)
ejemplo
hist(ejemplo, col='orange', breaks=40,
     ylab = "Frecuencia", main = "Histograma ejemplo")