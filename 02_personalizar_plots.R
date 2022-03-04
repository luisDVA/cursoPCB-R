# ejercicio 2, personalización 
library(ggplot2)
library(gt)

# autos
ggplot(gtcars,aes(x=hp,y=trq,shape=drivetrain, color=drivetrain))+
  geom_point()

# rótulos de los ejes
ggplot(gtcars,aes(x=hp,y=trq,shape=drivetrain, color=drivetrain))+
  geom_point()+ 
  labs(x="Caballos de Fuerza (HP)", y="Torque (no me sé las unidades)")

# titulo, tamaño de los puntos, y un "theme"
ggplot(gtcars,aes(x=hp,y=trq,shape=drivetrain, color=drivetrain))+
        geom_point(size=4)+ 
        labs(x="Caballos de Fuerza",y="Torque", title="Autos Caros")+
  theme_minimal()

?pch
# 'contornos a los puntos', título de la leyenda
ggplot(gtcars,aes(x=hp,y=trq,shape=drivetrain, fill=drivetrain))+
  geom_point(size=4, color="white")+ 
  labs(x="Caballos de Fuerza",y="Torque", title="Autos de Lujo")+
  scale_shape_manual(values=c(21,22),name="Transmisión")+
  scale_fill_manual(values = c("#e76f51","yellow"),name="Transmisión")+
  theme_minimal()

# 

