# Clase semana 9
# Revisar datos de madera
# BD maderas

madera <- read.csv("Clases/2X2X2.CSV", header=T)

madera$Sp <- as.factor(madera$Sp)

boxplot(madera$Peso_gr ~ madera$Sp)

library(dplyr)

bar <- madera %>%
    filter(Sp=="Bar")


# Comparacion de una media teorica Mu=8.0 para SP = Barreta

mean(bar$Peso_gr)
t.test(bar$Peso_gr, mu=7.4)   


chp <- madera %>%
  filter(Sp== "Chp")

mean(chp$Peso_gr)
t.test(chp$Peso_gr, mu=8.5)


D.Ebano <- madera %>% 
  filter(Sp== "D.Ebano")

mean(D.Ebano$Peso_gr)
t.test(D. Ebano$Peso_gr, mu=12)


Ebano <- madera %>%
filter(Sp== "Ebano")

mean(Ebano$Peso_gr)
t.test(Ebano$Peso_gr, mu=8.3)
