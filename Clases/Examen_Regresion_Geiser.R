 # Clase Semana 15 dia 1
 # Examen de regresion integral
 # Alejandro Zapata

geiser <- read.csv("Clases/erupciones.csv", header = T)

 # Revisar datos

plot(geiser$waiting, geiser$eruptions, pch=19,
     xlab = "Tiempo de espera entre erupciones (min)",
     ylab = "Duracion de la erupcion (min)",
     col="gray",
     main="geiser old Faithfull")

cor.test(geiser$waiting, geiser$eruptions)

mean(geiser$eruptions)

sd(geiser$eruptions)

var(geiser$eruptions)

mean(geiser$waiting)

sd(geiser$waiting)

var(geiser$waiting)

geiser.lm <- lm(geiser$eruptions ~ geiser$waiting)
summary(geiser.lm)

lm(formula = geiser$eruptions ~ geiser$waiting)

# Valor de y prima para los valores de x dados
valores <- c(80, 40, 45, 53, 61)

-1.874016 + 0.075628 



