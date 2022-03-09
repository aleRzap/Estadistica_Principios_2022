# Clase semana 8
# Revisar longitud y ancho de la semilla
# Encino rojo

semillas <- read.csv("Clases/Semillas.csv", header = T)

mean(semillas$Longitud_mm)
mean(semillas$Diametro_mm)


boxplot(semillas$Longitud_mm)
boxplot(semillas$Diametro_mm)

# Identificar los cuartiles Longitud

quantile(semillas$Longitud_mm, 0,25)
quantile(semillas$Longitud_mm, 0,5)
quantile(semillas$Longitud_mm, 0,75)
quantile(semillas$Longitud_mm, 0,1)

# Identificar los cuartiles Diametro









