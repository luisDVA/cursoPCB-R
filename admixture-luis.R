library(ggplot2)
library(readr)
library(tidyr)
library(dplyr)
library(paletteer)

rotulos <- read_delim("datos/Euro.clst.txt",col_names = c("id","muestra","pob"))
probsk6 <- read_delim("datos/H938_Euro.LDprune.6.Q", col_names = FALSE)

# de estrutura ancha a larga
gruposProb <- bind_cols(rotulos,probsk6) %>%
  pivot_longer(cols = X1:X6, names_to = "cluster", values_to = "prob")

# barras para cada muestra
ggplot(data=gruposProb,
       aes(x=factor(muestra), y= prob, fill = factor(cluster))) +
  geom_col(color = "gray", size = 0.01) 

# mucho espacio en blanco
ggplot(gruposProb, aes(x=factor(muestra), prob, fill = factor(cluster))) +
  geom_col(color = "gray", size = 0.01)+ 
  facet_grid(~pob)

# escalas
ggplot(gruposProb, aes(x=factor(muestra), prob, fill = factor(cluster))) +
  geom_col(color = "gray", size = 0.01)+ 
  facet_grid(~pob, scales = "free",space = "free")

# apariencia predeterminada
ggplot(gruposProb, aes(x=factor(muestra), prob, fill = factor(cluster))) +
  geom_col(color = "gray", size = 0.01)+ 
  facet_grid(~pob,scales = "free",space = "free")+
  theme_minimal()


ggplot(gruposProb, aes(x=factor(muestra), prob, fill = factor(cluster))) +
  geom_col(color = "gray", size = 0.01)+ 
  facet_grid(~pob,scales = "free",space = "free")+
  theme_minimal()+
  theme(axis.text.x = element_blank(),
        panel.grid = element_blank())+
  scale_y_continuous(expand = c(0, 0)) +
  labs(x="muestra",y="Probabilidad")

ggplot(gruposProb, aes(x=factor(muestra), prob, fill = factor(cluster))) +
  geom_col(color = "gray", size = 0.01)+ 
  facet_grid(~pob,scales = "free",space = "free")+
  theme_minimal()+
  theme(axis.text.x = element_blank(),
        panel.grid = element_blank())+
  scale_y_continuous(expand = c(0, 0)) +
  scale_fill_paletteer_d("palettetown::squirtle", guide="none")+
  labs(x="muestra",y="Probabilidad")


ggplot(gruposProb, aes(x=factor(muestra), prob, fill = factor(cluster))) +
  geom_col(color = "gray", size = 0.01)+ 
  facet_wrap(~pob,scales = "free",nrow = 3)+
  theme_minimal()+
  theme(axis.text.x = element_blank(),
        panel.grid = element_blank())+
  scale_fill_paletteer_d("palettetown::squirtle",guide="none")+
  scale_y_continuous(expand = c(0, 0)) +
  labs(x="muestra",y="Probabilidad")
