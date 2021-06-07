## plot
infovegetal <- read.csv("diversitat_vegetal_Collserola_Anna_Aguilera.csv", sep=";", stringsAsFactors=TRUE)
library(ggplot2)
ggplot(infovegetal, aes(x=Distancia.m., y=Nombre, group = Especie, colour =Especie )) + 
  geom_line()  + 
  geom_point( size=2, shape=21, fill="white") + 
  theme_minimal()
