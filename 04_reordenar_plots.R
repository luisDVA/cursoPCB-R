library(ggplot2)
library(openintro)
library(forcats)

fastfood
starbucks

babies_crawl

# barras
ggplot(babies_crawl,aes(x=birth_month,y=avg_crawling_age))+
  geom_bar(stat = "identity",fill="#0a4e96",color="black")

# barras, horizontales
ggplot(babies_crawl,aes(x=birth_month,y=avg_crawling_age))+
  geom_bar(stat = "identity",fill="#0a4e96",color="black")+coord_flip()

# ordenando una variable segun los valores de otra 
ggplot(babies_crawl,
       aes(x=fct_reorder(birth_month,avg_crawling_age),
           y=avg_crawling_age))+
  geom_bar(stat = "identity",fill="#0a4e96",color="black")+coord_flip()

# ordenando una variable segun los valores de otra, descendiente 

ggplot(babies_crawl,
       aes(x=fct_reorder(birth_month,avg_crawling_age, .desc=TRUE),
           y=avg_crawling_age))+
  geom_bar(stat = "identity",fill="#0a4e96",color="black")+
  coord_flip()



# arreglar el nombre del eje x


# agregar titulo

# personalizar 