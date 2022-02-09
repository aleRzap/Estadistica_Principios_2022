#Alejandro Zapata
#09/02/2022
# Sesion semana 4 sala de computo


# Insertar datos ----------------------------------------------------------

vivero <- read.csv("Clases/BD_vivero.csv", header = TRUE)

# Estadistica descriptiva -------------------------------------------------

# Medidas de tendencia central

mean(vivero$IE)
median(vivero$IE)
range(vivero$IE)
fivenum(vivero$IE)

boxplot(vivero$IE, horizontal = T, col = "red")
hist(vivero$IE, ylim = c(0,12))

frec <- table(vivero$IE)

