
#########################################
# PROCESAMIENTO DE DATOS DEL SENAMHI
# Marvin J. Quispe Sedano
# Email: marvinjqs@gmail.com
########################################

# IMPORTAR EL ARCHIVO DE EXCEL EN FORMATO CSV

setwd("D:/PROYECTOS-R/curso_R_basico/script/CLASE5")

df <- read.table("qc00000618.txt", 
               header = F, 
               sep = " ", 
               stringsAsFactors = F,
               na.strings = "-99.9" )

names(df) <- c("YEAR", "MES", "DIA", "PP", "TMAX", "TMIN")


fecha_diaria <- paste(df$YEAR, df$MES, df$DIA, sep = "-")

df$FECHA <- as.POSIXct(fecha_diaria, format = "%Y-%m-%d")

df$FECHAS_m <- format(df$FECHA, format = "%Y-%m")

############################

pp_mensual <- aggregate(PP ~ FECHAS_m ,
                   data = df,FUN=sum)

####################################

df$TMEAN <- (df$TMAX + df$TMIN) / 2 

temp_mensual <- aggregate( TMEAN ~ FECHAS_m ,
                        data = df,FUN=mean)

##########################

df$FECHAS_a <- format(df$FECHA, format = "%Y")

temp_mensual_a <- aggregate( TMEAN ~ FECHAS_a ,
                           data = df,FUN=mean)

plot(temp_mensual[,2], type = "l")






