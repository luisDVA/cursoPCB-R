install.packages("ggthemes")
library(ggthemes)
install.packages("remotes")
library(remotes)
remotes::install_github("datarootsio/artyfarty")
library(artyfarty)
library(ggplot2)
library(openintro)

data("fastfood")
fastfood

# figura con puntos y gradiente de color
ggplot(fastfood,aes(x=calories,y=cal_fat,color=sodium))+
  geom_point()

# temas preinstalados
ggplot(fastfood,aes(x=calories,y=cal_fat,color=sodium))+
  geom_point()+
  theme_bw()

ggplot(fastfood,aes(x=calories,y=cal_fat,color=sodium))+
  geom_point()+
  theme_dark()

# temas de ggthemes
ggplot(fastfood,aes(x=calories,y=cal_fat,color=sodium))+
  geom_point()+
  theme_clean()

ggplot(fastfood,aes(x=calories,y=cal_fat,color=sodium))+
  geom_point()+
  theme_excel()

ggplot(fastfood,aes(x=calories,y=cal_fat,color=sodium))+
  geom_point()+
  theme_gdocs()

# temas de artyfarty
ggplot(fastfood,aes(x=calories,y=cal_fat,color=sodium))+
  geom_point()+
  theme_monokai()

ggplot(fastfood,aes(x=calories,y=cal_fat,color=sodium))+
  geom_point()+
  theme_scientific()

ggplot(fastfood,aes(x=calories,y=cal_fat,color=sodium))+
  geom_point()+
  theme_ft()
