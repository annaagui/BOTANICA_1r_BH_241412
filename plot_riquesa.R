## Calcul riquesa especifica

## Llegim csv
infovegetal <- read.csv("diversitat_vegetal_Collserola_Anna_Aguilera.csv", sep=";", stringsAsFactors=TRUE)

## Agrupem les especies per parcela
mask <- factor(infovegetal$Distancia.m.)
riqespdata <- split(infovegetal$Especie, mask)

## Calculem el nombre d'especies per parcela
riqesp <- sapply(riqespdata, length)

## Plot
plot(riqesp ~levels(mask), main="Riquesa específica Collserola", ylab="Riquesa Específica", xlab="Distància (m)", type='l')
