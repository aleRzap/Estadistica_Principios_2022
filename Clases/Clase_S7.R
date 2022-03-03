# Alejandro
# Semana 7



Semillas <-read.csv("Clases/BaseDeDatos_estadistica.csv", header = T) 
graf.sem <- boxplot(semilla$Peso_gr)

# Identificar

witch(semilla$Peso_gr >40)
Semillas [524, ]

# Identificar semillaS con valores menores al rango

graf.sem$out
wich(Semillas$peso_gr <=2.671)

#Identificar los cuantiles

quantile(Semillas$Peso_gr, 0.25)
quantile(Semillas$Peso_gr, 0.5)
quantile(Semillas$Peso_gr, 0.75)
quantile(Semillas$Peso_gr, 1)

# Tablas de frecuencia para semillas

numero <- table(semilla$Cond)
numero/6 
