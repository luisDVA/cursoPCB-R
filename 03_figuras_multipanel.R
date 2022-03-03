# ejercicio 3, facetas
library(ggplot2)
library(gt)

data(gtcars)

ggplot(gtcars,aes(x=hp,y=trq,shape=drivetrain, color=drivetrain))+
  geom_point(size=4)+ 
  labs(x="Caballos de Fuerza",y="Torque", title="Autos de Lujo")+
  theme_minimal()

# facet wrap parte los datos para hacer figuras multipanel
ggplot(gtcars,aes(x=hp,y=trq,shape=drivetrain, color=drivetrain))+
  geom_point(size=4)+ 
  labs(x="Caballos de Fuerza",y="Torque", title="Autos de Lujo")+
  theme_minimal()+
  facet_wrap(~mfr) # notación de formula


ggplot(gtcars,aes(x=hp,y=trq,shape=drivetrain, color=drivetrain))+
  geom_point(size=4)+ 
  labs(x="Caballos de Fuerza",y="Torque", title="Autos de Lujo")+
  theme_minimal()+
  facet_wrap("mfr") # el nombre entre comillas

# cambiar no. de columnas
ggplot(gtcars,aes(x=hp,y=trq,shape=drivetrain, color=drivetrain))+
  geom_point(size=4)+ 
  labs(x="Caballos de Fuerza",y="Torque", title="Autos de Lujo")+
  theme_minimal()+
  facet_wrap("mfr",ncol = 2) # el nombre entre comillas


# Ejercicio
# mejor hacer una figura por tipo de transmisión



# facet grid
# para separar por dos o más variables
ggplot(gtcars,aes(x=hp,y=trq,shape=drivetrain, color=drivetrain))+
  geom_point(size=4)+ 
  labs(x="Caballos de Fuerza",y="Torque", title="Autos de Lujo")+
  theme_dark()+
  facet_grid(ctry_origin~drivetrain)
