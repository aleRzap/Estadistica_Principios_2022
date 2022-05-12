#AZR
#HW5
# Ejercicio 1 -------------------------------------------------------------


 speed <- c(2, 3, 5, 9, 14, 24, 29, 34)
abundance <- c(6, 3, 5, 23, 16, 12, 48, 43)

cor.test(speed, abundance)
plot(speed, abundance)

# Correlacion? 0.8441408 (cerca del valor de +1)
# Valor de p? 0.008393 (es menor que 0.05)
# Asi mismo se acepta la H1 (Hipotesis alternativa)

# Ejercicio 2 -------------------------------------------------------------

suelo <- read.csv("Clases/suelo.csv", header = T)

cor.test(suelo$pH, suelo$N)

# r- 0.636654
# p-value- 1.149e-06

cor.test(suelo$pH, suelo$Dens)

# r- 0.5890264
# p-value- 1.062e-05

cor.test(suelo$pH, suelo$P)

# r- 0.5910303
# p-value- 9.74e-06

cor.test(suelo$pH, suelo$Ca)

# r- 0.8086293
# p-value- 3.614e-12

cor.test(suelo$pH, suelo$Mg)

# r- 0.3957821
# p-value- 0.005361

cor.test(suelo$pH, suelo$K)

# r- 0.5795727
# p-value- 1.585e-05

cor.test(suelo$pH, suelo$Na)

# r- 0.6932614
# p-value- 4.724e-08

cor.test(suelo$pH, suelo$Conduc)

# r- 0.7648104
# p-value- 2.484e-10
