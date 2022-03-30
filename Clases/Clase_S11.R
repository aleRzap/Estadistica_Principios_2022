# 30/03/2022


datos <- read.csv("Clases/mainproduccion.csv", header = T)

datos$Tiempo <- as.factor(datos$Tiempo)

boxplot(datos$Kgsem ~ datos$Tiempo, col="lightblue" ,
        xlab = "Tiempo",
        ylab = "Semilla (Kg)")

t.test(datos$Kgsem ~ datos$Tiempo, paired =TRUE)


# Biomasa -----------------------------------------------------------------

boxplot(datos$BioRama ~ datos$Tiempo) 
        xlab = "Tiempo"
        ylab = "BioRama (Ton)"

t.test(datos$BioRama (Ton) ~ datos$Tiempo, paired =TRUE)

# Germinacion -------------------------------------------------------------

boxplot(datos$Germ ~ datos$Tiempo)
        xlab = "Tiempo"
        ylab = "Germinacion (%)"

t.test(datos$Germ ~ datos$Tiempo, paired = TRUE)





