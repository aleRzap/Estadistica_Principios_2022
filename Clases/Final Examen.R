# Examen Final
# Alejandro Zapata

Madera2X2X5 <- read.csv("Clases/Madera_2X2X5.csv", header = T)

library(dplyr)
Pino <- Madera2X2X5 %>%
  filter(Sp=="Pino")


Encino <- Madera2X2X5 %>%
  filter(Sp=="Encino")


mean(Madera2X2X5$Peso_gr)
mean(Pino$Peso_gr)
mean(Encino$Peso_gr)
sum(Pino$Peso_gr^2)
sum(Encino$Peso_gr)

# Diferencia en gramos que existe

en <- mean(Encino$Peso_gr)
pn <- mean(Pino$Peso_gr)
en - pn


boxplot(Madera2X2X5$Peso_gr ~ Madera2X2X5$Sp,
        xlab = "Cuadros de madera", 
        ylab = "Peso(gr)")
























