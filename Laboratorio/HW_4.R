# Alejandro Zapata
# HW_04 [Laboratorio 6]
# 13/05/2022

# Base de los vectores 

wins = c(52, 51, 47, 47, 42)

losses = c(20, 21, 25, 25, 30)

win_loss_perc = wins / (wins + losses)

teams = c("UtJ", "PhS", "DnN", "LAC", "DIM")


# Manupulacion de vectores: subconjuntos


# primer elemento de "wins"
wins[1]

# tercer elemento de "losses"
losses[3]

# ultimo nombre en "teams"
teams[5]

length(teams) # da el número de valores

teams[length(teams)]

sort(wins, decreasing = T) # ordena los valores de forma creciente o 
# decreciente

rev(wins) # invierte los valores



# Subconjuntos con índices lógicos


# victoria de Utah Jazz
wins[teams == "UtJ"]

# equipos con victorias > 40
teams[wins > 40]

# nombre de los equipos con derrotas entre 10 y 29
teams[losses >= 10 & losses <= 29]



# Factores y variables cualitativas

# vector numerico
num_vector <- c(1, 2, 3, 1, 2, 3, 2)

# crear un factor apartir de num_vector
first_factor <- factor(num_vector)
first_factor

#  tomar el vector teams y convertirlo como factor
teams = factor(teams)
teams


# Secuencias


# operador dos puntos:
1:5
1:10
-3:7
10:1

# funcion secuencia
seq(from = 1, to = 10)
seq(from = 1, to = 10, by = 1)
seq(from = 1, to = 10, by = 2)
seq(from = -5, to = 5, by = 1)



# Vectores repetidos
rep(1, times = 5) # repetir 1 cinco veces

rep(c(1, 2), times = 3)# repetir 1 y 2 tres veces

rep(c(1, 2), each = 2)

rep(c(1, 2), length.out = 5)

rep(c(3, 2, 1), times = 3, each = 2)



# De vectores a estructura tabular (data frame)


  dat = data.frame(
    Teams = teams,
    Wins = wins,
    Losses = losses,
    WLperc = win_loss_perc
  )
  dat

  
dat$Teams

dat$Wins[1]

dat$Wins[5]

# Subconjuntos logicos

dat$Wins[dat$Teams =='UtJ']

dat$Teams[dat$Wins > 40]

dat$Teams[dat$Losses >= 10 & dat$Losses <= 29]








