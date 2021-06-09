#################################
# MAPAS TEMATICOS EN R USANDO INFORMACIÓN ESPACIAL
# CURSO: PROGRAMACIÓN CON R
# Marvin J. Quispe Sedano
# Email: marvinjqs@gmail.com
#################################


#---------------------------------------------------------
# Para limpiar la consola:
# TeclaS :  Ctrl + L

# Para limpiar el workspace:
rm(list = ls())

###############
#  Paquetes   #
###############


install.packages('rgdal')
install.packages('ggplot2')
install.packages('maps')


library(rgdal)
library(ggplot2)
library(maps)


#CARGAR SHP DE PASIVOS MINEROS
setwd('C:/Users/marvi/OneDrive/Escritorio/Nueva carpeta/')
pas_min <- readOGR("Pasivos-Mineros.shp")
plot(pas_min)

#CONVERTIR SHP A DATAFRAME
area.points <- data.frame(pas_min)
head(area.points)

#CREACIÓN DEL MAPA TEMÁTICO

Mapa <- ggplot() + borders("world", colour="black", fill= "Beige") + 
  theme_bw() + xlim(-85,-60) + ylim(-20,2) + 
  xlab("Longitud") + ylab("Latitud") +
  geom_point(aes(x=coords.x1,y=coords.x2, shape = factor(TIPO_COMPO),
                 colour = factor(TIPO_COMPO)), data = area.points)

Mapa



