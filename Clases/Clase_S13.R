# Clase semana 14 dia 1
# Ejercicio de regresion 


semillas <- read.csv("Clases/Semillas.csv", header = T)
semillas

# Plot de Diametro vs Peso en gr

plot(semillas$Diametro_mm, semillas$Peso_gr,
     pch=20,
     col="Orange",
     Xlab = "Diametro de semilla (mm)",
     Ylab = "Peso de semilla (gr)")
      
# lm funcion que me ayuda a determinar alfa y beta de la regresion 

sem,lm <- lm(semillas$Peso_gr ~ semillas$Diametro_mm)
summary(sem,lm)

semillas$yprima <- -

plot(semillas$Diametro_mm, semillas$Peso_gr,
     pch=20
     col="lightblue",
     xlab = "Diametro de semilla (mm)",
     ylab = "Peso de semilla (gr)")
abline(Sem,lm,
       col="blue")
text(19, 2, "Y=4.934+ 0.532")
text(19,1.5, "Regresion lineal")



semillas$Ajustados <- round(sem,lm$fitted.values,2)
sem.lm.



# Encontrar los siguientes valores aplicando la formula de regesion
# 18, 11, 14, 16,15




