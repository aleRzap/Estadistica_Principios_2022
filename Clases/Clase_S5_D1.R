# AZR
# Semana 5
# 16/02/2022


url <- paste0("https://raw.githubusercontent.com/mgtagle/",
              "PrincipiosEstadistica2021/main/cuadro1.csv")

inventario <- read.csv(url)
summary(inventario)

inventario$Especie <- as.factor(inventario$Especie)
summary(inventario)
inventario$Posicion <- as.factor(inventario$Posicion)
summary(inventario)

# Obtener una tabla de frecuencia para las variables Especie
# y posicion. Usar la funcion table

freq.sp <- table(inventario$Especie)

freq.sp/sum(freq.sp)*100

freq.sp <- table(inventario$Posicion)

porciento <-freq.sp/sum(freq.sp)*100 

# Porcentaje de posicion

por.pos <- freq.sp/sum(freq.sp)*100

barplot(freq.sp, col = "red", las =1, border = NA)
barplot(porciento, col = "grey", las =1)
barplot(freq.sp, las=1, col = "ligthblue", border = NA)

pie(freq.sp, col = topo.colors(4))

pie(freq.sp, col = topo.colors(1))

tables = paste(levels(inventario$Especie), freq.sp, "ind")
