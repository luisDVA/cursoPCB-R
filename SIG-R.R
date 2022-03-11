# cargar paquetes, instalarlos si hace falta
library(stars)
library(dplyr)
library(sf)
library(ggplot2)
library(scico)


# leer el archivo con las localidades
localidades <- read.csv("datos/localidades.csv") 

# convertirlo a objeto sf, especificando cuales son las variables con las coordenadas x y
xydat <- st_as_sf(localidades, coords = c("long", "lat"),crs=4326)

plot(xydat)

# leer los raster de temperatura, en este caso los archivos estan en el directorio de trabajo
annTemp <- read_stars("datos/temp_ann.tif") # temperatura media anual
plot(annTemp)
annPrec <- read_stars("datos/prec_ann.tif") # precipitación anual
plot(annPrec)

# leer shp
divpol <- st_read("datos/mexstates.shp")
plot(divpol)

divpol <- divpol[,4]
divpol
plot(divpol)

# Con ggplot
ggplot(data=divpol)+
  geom_sf()

# el objeto data y el aes pueden ir en los geom
ggplot()+
  geom_sf(data=divpol)

# mapeo de color y relleno
ggplot(data = divpol)+
  geom_sf(fill="red")

ggplot(data = divpol)+
  geom_sf(fill="red",color="white")

# Lo mismo pero con los puntos xy
ggplot(data=xydat)+
  geom_sf()

# Capas espaciales
ggplot()+
  geom_sf(data=divpol)+
  geom_sf(data=xydat)

# rasters
ggplot()+
  geom_stars(data=annPrec)
# modificar escala continua
ggplot()+
  geom_stars(data=annPrec)+
  scale_fill_scico(palette="davos",
                   na.value="transparent")

# apilar vector y raster
ggplot()+
  geom_stars(data=annPrec)+
  scale_fill_scico(palette="davos",
                   na.value="transparent")+
  geom_sf(data=divpol,fill="transparent", color="black")

# raster, poligono y punto
ggplot()+
  geom_stars(data=annPrec)+
  scale_fill_scico(palette="davos",
                   na.value="transparent")+
  geom_sf(data=divpol,fill="transparent", color="black")+
  geom_sf(data=xydat)

library(ggthemes)
# raster, poligono y punto
ggplot()+
  geom_stars(data=annPrec)+
  scale_fill_scico(palette="davos",
                   na.value="transparent")+
  geom_sf(data=divpol,fill="transparent", color="black")+
  geom_sf(data=xydat)+
  theme_map()
