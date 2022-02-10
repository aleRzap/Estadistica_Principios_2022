# Alejandro Zapata Ramirez
# Semana 4 dia 2
# Descargar datos de internet

url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfo.csv"

profepa <- read.csv(url)

summary(profepa)


profepa$Inspeccion >= mean(profepa$Inspeccion)

# subset

ins.alta <- subset(profepa, profepa$Inspeccion >= mean(profepa$Inspeccion))
ins.baja <- subset(profepa, profepa$Inspeccion >= mean(profepa$Inspeccion))

Est.C <- subset(profepa, profepa$Entidad == "Chiapas")


Est.C <- profepa[4:8,]
Est.N <- profepa[17:18, ]


# Obetener los estados con inspecciones > a 15 pero < a 35

ins.media <- subset(profepa, profepa$Inspeccion >= 15 & profepa$Inspeccion >= 35)
ins.media <- subset(profepa, profepa$Inspeccion >= 15 & profepa$Operativo >= 10)
rec.media <- subset(profepa, profepa$Recorrido >= mean(profepa$Recorrido) & profepa$Operativo <= mean(profepa$Operativo)

                    
