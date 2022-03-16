# Clase semana 9
# Revisar datos de madera 2X2X2
# BD maderas

madera <- read.csv("Clases/2X2X2.CSV", header=T)

madera$Sp <- as.factor(madera$Sp)

library(dplyr)


# Bar ---------------------------------------------------------------------



bar <- madera %>%
  filter(Sp=="Bar")



shapiro.test(bar$Peso_gr)

hist(bar$Peso_gr,col = "Gold")


# Chp ---------------------------------------------------------------------


Chp <- madera%>%

  filter(Sp=="Chp")

shapiro.test(chp$Peso_gr)

hist(chp$Peso_gr, col = "Green")

# Ebano -------------------------------------------------------------------

Eb <- madera%>%
  
  filter(Sp=="Ebano")


shapiro.test(Ebano$Peso_gr)


hist(Ebano$Peso_gr, col = "Red")


# D.Ebano -----------------------------------------------------------------

D.Ebano <- madera%>%
  
  filter(Sp=="D. Ebano")


shapiro.test(D.Ebano$Peso_gr)


hist(D.Ebano$Peso_gr)


