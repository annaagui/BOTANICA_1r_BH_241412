## Llegim csv
infovegetal <- read.csv("diversitat_vegetal_Collserola_Anna_Aguilera.csv", sep=";", stringsAsFactors=TRUE)

## Agrupem les especies per parcela
mask <- factor(infovegetal$Distancia.m.)
riqespdata <- split(infovegetal$Especie, mask)

## Calculem el nombre d'especies per parcela
riqesp <- sapply(riqespdata, length)

## Observem per dist�ncia la cam� en datframe

riquesa <- data.frame(Distancia.m.=c(levels(mask)), RiquesaEspec�fica=c(riqesp))


