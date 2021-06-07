## Llegim csv
infovegetal <- read.csv("diversitat_vegetal_Collserola_Anna_Aguilera.csv", sep=";", stringsAsFactors=TRUE)

## Agrupem les especies per parcela
mask <- factor(infovegetal$ï..NombreParc)
riqespdata <- split(infovegetal$Especie, mask)

## Calculem el nombre d'especies per parcela
riqesp <- sapply(riqespdata, length)

## Observem per distància la camí en datframe

riquesa <- data.frame(Distancia.m.=c(levels(mask)), RiquesaEspecífica=c(riqesp))


