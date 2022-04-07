#Examen de comparacion de medias


# Ejercicio 1 -------------------------------------------------------------


costal <- c(87.7, 80.1, 77.28, 78.76, 81.52, 74.2, 80.71, 79.5, 77.87, 81.94, 80.7, 
            82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62, 81.4, 74.89, 82.95,
            73.59, 77.92, 77.18, 79.83, 81.23, 79.28, 78.44, 79.01, 80.47, 76.23, 
            78.89, 77.14, 69.94, 78.54, 79.7, 82.45, 77.29, 75.52, 77.21, 75.99, 
            81.94, 80.41, 77.7)

Numero de datos < ##(43)

mean(costal) <##(78.91273)

sd(costal) <##(3.056806)

t.test(costal, mu=20, alternative = "less")
t.test(costal, mu=20, alternative = "greater")

# Cual es el valor de p? < 2.2e-16
# Cual es la media de los costale? < 78.91273
# Cual hipotesis acepta? < H1 (el peso de cada muestra es diferente)
# Cuantos grados de libertad tiene el experimento < 43
# Existe evidencia de que el valor medio promedio de los costales observados 
#             es menor al los que anuncia el producto? < Si existe evidencia ya que faltan 1.08932 de muestra. 




# Ejercicio 2 -------------------------------------------------------------


azufre <- c(15.8, 22.7, 26.8, 19.1, 18.5, 14.4, 8.3, 25.9, 26.4, 9.8, 22.7, 15.2, 
            23.0, 29.6, 21.9, 10.5, 17.3, 6.2, 18.0, 22.9, 24.6, 19.4, 12.3, 15.9, 
            11.2, 14.7, 20.5, 26.6, 20.1, 17.0, 22.3, 23.9, 17.5, 11.0, 20.4, 16.2,
            20.8, 13.3, 18.1)

t.test(azufre, var.equal = T)
t.test(azufre, mu=20.6, alternative = "less")




# Cual es el valor de p ? < 2.2e-16

# Cuales son los intervalos de confianza al 95% ? < 16.66393 / 20.30018

# Cuantos grados de libertad tiene el experimento ? < 38

# Cual es la hipotesis aceptada ? < H1 (ya que existen diferencias de valor a las originales, nos podemos dar cuenta gracias a la prueba T)

# Existe evidencia de que el valor medio promedio de las emisiones observadas es mayor a la
#   declarada en los procedimientos de seguridad de la empresa ? < Si exisisten diferencias, ya que el valor originales de 17.5 y en el programa nos arroja 18.48205



# Ejercicio 3 -------------------------------------------------------------
URL <- "https://raw.githubusercontent.com/mgtagle/MCF-202_
              Agosto_2021/main/TEMPAIRE_DIA.csv"

#temp.dia <- read.csv(URL)
mean(temp.dia$temp_media)
t.test(temp.dia$temp_media, mu=24)


# Ejercicio 4 -------------------------------------------------------------


Grupo <- gl(2, 12, labels = c("Fotografia", "Araña"))

Ansiedad <- c(30, 35, 45, 40, 50, 35, 55, 25, 30, 45, 40, 50, 40, 35, 50, 55, 
              65, 55, 50, 35, 30, 50, 60, 39)

Datos <- data.frame(Grupo, Ansiedad)

head(Datos)

library(dplyr)

Fotografia <- Datos%>%

  filter(Grupo=="Fotografia")
mean(Fotografia$Ansiedad)

Araña <- Datos%>%
filter(Grupo=="Araña")

mean(Araña$Ansiedad)

boxplot(Datos$Ansiedad ~ Datos$Grupo, col = "")




















