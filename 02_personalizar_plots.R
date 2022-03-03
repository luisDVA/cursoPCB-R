# ejercicio 2, personalización 


# autos
ggplot(gtcars,aes(x=hp,y=trq,shape=drivetrain, color=drivetrain))+
  geom_point()

# rótulos de los ejes
ggplot(gtcars,aes(x=hp,y=trq,shape=drivetrain, color=drivetrain))+
  geom_point()+ labs(x="Caballos de Fuerza",y="Torque")

# titulo, tamaño de los puntos, y un "theme"
ggplot(gtcars,aes(x=hp,y=trq,shape=drivetrain, color=drivetrain))+
        geom_point(size=4)+ 
        labs(x="Caballos de Fuerza",y="Torque", title="Autos de Lujo")+
  theme_minimal()

?pch
# 'contornos a los puntos', título de la leyenda
ggplot(gtcars,aes(x=hp,y=trq,shape=drivetrain, fill=drivetrain))+
  geom_point(size=4)+ labs(x="Caballos de Fuerza",y="Torque", title="Autos de Lujo")+
  scale_shape_manual(values=c(21,22),name="Transmisión")+
  scale_fill_manual(values = c("#40caee","#ff7abc"),name="Transmisión")+
  theme_minimal()


