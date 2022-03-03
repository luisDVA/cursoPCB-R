library(ggplot2)
library(gt)
#### ejercicio 1
# imprimir los datos en pantalla 
data("gtcars")
gtcars

# sin geom 
ggplot(gtcars,aes(x=hp,y=trq))

# con geom
ggplot(gtcars,aes(x=hp,y=trq))+
  geom_point()

# más mapeo estético (forma) 
ggplot(gtcars,aes(x=hp,y=trq,shape=drivetrain))+
  geom_point()

# color
ggplot(gtcars,aes(x=hp,y=trq,shape=drivetrain, color=drivetrain))+
  geom_point()


