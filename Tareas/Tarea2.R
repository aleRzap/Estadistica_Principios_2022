# Alejandro
# 11/02/2022
# HW_2


# Los datos de trabajo provienen del libroIntroductory probability & statistics,
# applications for forestry& natural sciencesde Kozak et al. (2008). 
# El Cuadro 1 muestra un ejemplo de datos coletados de50 árboles con siete variables. 
# (i) Árbol se refiere al número de árbol, (ii) Fecha: mes decolecta enMarzo 2006; 
# (iii) Especies: C: Cedro Rojo (Western red cedar); F: Douglasia verde (Douglas fir);
# H: Tsuga heterófila (western hemlock); 
# (iv) Posición: clasificación de la copa: D: Dominante, C:codominate, I: Intermedio,
# S: suprimido; (v) Vecinos: número de vecinos en un radio de 5m; 
#(vi)Diámetro: diámetro a la altura de pecho (1.3m);
# (vii) Altura total.

conjunto <- read.csv("Principios_Estadisica_2022/Clases/Libr01.csv", header = TRUE)


# Aplicar la funcion subset para la variable Altura de acuerdo a 1 --------

# Incluir los datos iguales o menores a la media (objeto en R se llama: H.media)

H.media <- subset(Libro1, Libro1$Altura <= mean(Libro1$Altura))
mean(Libro1$Altura)

# Incluir los datos menores a 16.5 m (objeto en R se llame: H.16)

H.16 <- subset(Libro1, Libro1$Altura <= 16.5)


# Aplicar la funcion Subset para la variable vecinos ----------------------

# Incluir los arboles que tengan un numero de vecinos iguales o menores a 3 (objeto en R: #vecinos-3)  

vecinos3 <- subset(Libro1, Libro1$Vecinos <= 3)

# Incluir los arboles que tengan un numero de vecinos mayores a 4 (objeto en R: vecinos-4)

vecinos4 <- subset(Libro1, Libro1$Vecinos >= 4)



# Aplicar la funcion subset para la variable Diametro ---------------------

# Incluir los diametros menores a la media (objeto en R: DBH-media)

DBHmedia <- subset(Libro1, Libro1$Diametro <= mean(Libro1$Diametro))

mean(Libro1$Diametro)

# Incluir los Diametros mayores a 16 (objeto en R: DBH-16)

BDH16 <- subset(Libro1, Libro1$Diametro >= 16)



# Aplicar la funcion subset para la variable Especie ----------------------

# Incluir la especie Cedro Rojo

Cedro <- subset(Libro1, Libro1$Especie == "C")

#Incluir la especie Tsuga heterofila y Douglasia verde

EspeciesH <- subset(Libro1, Libro1$Especie == "H")

EspeciesF <- subset(Libro1, Libro1$Especie == "F")



# Determinar cuantas observaciones son menores o iguales a 16.9 cm --------

Observaciones16 <- subset(Libro1, Libro1$Diametro <= 16.9 )


# Determinar cuantas observaciones son mayores a 18.5 metros de Al --------

Obs.alt <- subset(Libro1, Libro1$Altura >= 18.5 )



# Visualizacion de Datos  -------------------------------------------------

# Con la funcion hist generar los histogramas para los objetos creados en el apartado anterior


# Altura, H.media y H.16 --------------------------------------------------

# Histograma de la altura

hist(Libro1$Altura, ylim = c(0,16), main = "Altura de los arboles", 
     xlab = "Altura", ylab = "Frecuencia", las = 1, col = "#996600")

# Histograma de la H.MEDIA

hist(H.media$Altura, ylim = c(0,10), main = "Altura media de los arboles", 
     xlab = "media de los arboles", ylab = "Frecuencia", las = 1, col = "dark green")

# Histograma de H.16

hist(H.16$Altura, xlim = c(6,18), ylim = c(0,12), main = "Altura de arboles de 16.5 o menos",
     xlab = "media de los arboles", ylab = "Frecuencia de los arboles", las = 1, col = "orange")
    


# vecinos, vecinos-3, vecinos-4 -------------------------------------------

# Histograma de vecinos 

hist(Libro1$Vecinos, ylim = c(0,14), main = "Vecinos de los arboles", 
     xlab = "Numero de vecinos", ylab = "Frecuencia", las = 1, col = "yellow")


#Histograma de vecinos de 3 o menor 

hist(vecinos3$Vecinos, xlim = c(0,4), ylim = c(0,15), main = "Vecinos menores de 3",
     xlab = "Vecinos de arboles", ylab = "Frecuencias", las = 1, col = "purple")






