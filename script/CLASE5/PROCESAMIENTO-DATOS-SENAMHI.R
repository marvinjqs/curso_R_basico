
#########################################
# PROCESAMIENTO DE DATOS DEL SENAMHI
# Marvin J. Quispe Sedano
# Email: marvinjqs@gmail.com
########################################

# IMPORTAR EL ARCHIVO DE EXCEL EN FORMATO CSV

library(lubridate)

setwd("C:/Users/Asus/Desktop/WASSER-WORLD/GOES PIURA/DATA/")

df <- read.table("sapillica2-data.csv", 
               header = T, 
               sep = ";", 
               stringsAsFactors = F,
               na.strings = "S/D" )

fecha_horaria <- paste(df$FECHA, df$HORA, sep = " ")


df$HORA <- as.POSIXct(fecha_horaria, format = "%d/%m/%Y %H:%M")

df$FECHA <- as.POSIXct(df$FECHA, format = "%d/%m/%Y")

names(df) <- c("FECHA", "HORA", "NIVEL", "PP")


byday <- aggregate(PP ~ FECHA ,
                   data = df,FUN=sum)

max(byday$PP)
=======
#########################################
# PROCESAMIENTO DE DATOS DEL SENAMHI
# Marvin J. Quispe Sedano
# Email: marvinjqs@gmail.com
########################################

# IMPORTAR EL ARCHIVO DE EXCEL EN FORMATO CSV

library(lubridate)

setwd("C:/Users/Asus/Desktop/WASSER-WORLD/GOES PIURA/DATA/")

df <- read.table("sapillica2-data.csv", 
               header = T, 
               sep = ";", 
               stringsAsFactors = F,
               na.strings = "S/D" )

fecha_horaria <- paste(df$FECHA, df$HORA, sep = " ")


df$HORA <- as.POSIXct(fecha_horaria, format = "%d/%m/%Y %H:%M")

df$FECHA <- as.POSIXct(df$FECHA, format = "%d/%m/%Y")

names(df) <- c("FECHA", "HORA", "NIVEL", "PP")


byday <- aggregate(PP ~ FECHA ,
                   data = df,FUN=sum)

max(byday$PP)

