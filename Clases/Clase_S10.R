#Clase 10

# D.Ebano y Ebano ---------------------------------------------------------



#Ho= no hay diferencias en las especies
#H1= el peso de cada especie es diferente

#En D.ebanoo, tenemos datos distintos a comparacion de Ebano. En D.ebano tenemos un peso
# de 0.92214 y en Ebano 0.83769 


library(dplyr)


D.Ebano <- madera%>%
  filter(Sp=="D. Ebano")

shapiro.test(D.Ebano$Peso_gr)


hist(D.Ebano$Peso_gr)



Eb <- madera%>%
  
  filter(Sp=="Ebano")


shapiro.test(Ebano$Peso_gr)


hist(Ebano$Peso_gr, col = "Red")


t.test(Ebano$Peso_gr, D.Ebano$Peso_gr, var.equal = T)

boxplot(Ebano$Peso_gr, D.Ebano$Peso_gr)


#P-value= < 2.2e-16
#H aceptado= H1 (Porque es menor a 0.5)

#media de x (Ebano)= 7.971667 
#media de y (D.ebano)= 9.940000


# Barreta y Chp  ----------------------------------------------------------

bar <- madera %>%
  filter(Sp=="Bar")



shapiro.test(bar$Peso_gr)

hist(bar$Peso_gr,col = "Gold")



Chp <- madera%>%
  
  filter(Sp=="Chp")

shapiro.test(chp$Peso_gr)

hist(chp$Peso_gr, col = "Green")


t.test(bar$Peso_gr, Chp$Peso_gr, var.equal = T)

boxplot(bar$Peso_gr, chp$Peso_gr)

boxplot(D.Ebano$Peso_gr, Ebano$Peso_gr, bar$Peso_gr, chp$Peso_gr, col = "Gold")

#P.value= 0.4913
#H.aceptado= H1 (Porque el peso de cada especie es diferente) 





