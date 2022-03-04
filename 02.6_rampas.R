library(ggplot2)
library(openintro)
data("starbucks")

starbucks
# scatter plot simple
ggplot(starbucks,aes(x=fat,y=calories))+
  geom_point()

# todos los puntos del mismo color
ggplot(starbucks,aes(x=fat,y=calories))+
  geom_point(color="darkgreen")

# cambiando el pch (plotting character)
ggplot(starbucks,aes(x=fat,y=calories))+
  geom_point(color="darkgreen", pch=18)

# mapeando el color a la variable carb (carbohidratos)
ggplot(starbucks,aes(x=fat,y=calories,color=carb))+
  geom_point()+
  scale_color_continuous()

# escala viridis de colores  
ggplot(starbucks,aes(x=fat,y=calories,color=carb))+
  geom_point()+
  scale_color_viridis_c(option="viridis")

ggplot(starbucks,aes(x=fat,y=calories,color=carb))+
  geom_point()+
  scale_color_viridis_c(option="inferno")

# más rampas de color
library(scico)
scico_palette_show()
ggplot(starbucks,aes(x=fat,y=calories,color=carb))+
  geom_point()+
  scale_color_scico(palette = "davos")
