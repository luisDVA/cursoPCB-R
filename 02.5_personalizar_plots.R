ggplot(data=gtcars, # el objeto con los datos que queremos graficar
       aes(x=hp,  # el eje x corresponde a 'hp' (caballaje)
           y=trq, # el eje y corresponde a 'trq' (torque)
           shape=drivetrain, # la forma de los puntos corresponde a drivetrain
           fill=drivetrain))+ # el color de relleno de los puntos corresp. a drivetrain
  geom_point(size=4,           # todos los puntos de tamaño 4 
             color="white")+   # el color (de contorno) de todos los puntos en blanco
  labs(x="Caballos de Fuerza",   # rotulo eje x
       y="Torque",               # rotulo eje y
       title="Autos de Lujo", # titulo para la figura
       caption = "Elaborado por Luis")+ # nota al pie    
  scale_shape_manual(values=c(21,22), # valores para cada elemento de drivetrain (forma de los puntos)
                     name="Transmisión")+ # nombre para la leyenda
  scale_fill_manual(values = c("blue","yellow"), # especificar colores 
                    name="Transmisión")+ # nombre para la leyenda
  theme_minimal() # cambiar apariencia general
