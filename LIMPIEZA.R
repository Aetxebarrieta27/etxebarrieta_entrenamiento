library(readr)
library(VIM)
library(naniar)
library(dplyr)
datos<- read.csv ("C:/Users/aiala/Downloads/netflix (1).csv")
miss_var_summary(datos)

vis_miss(datos)
str(datos)
#hacer la imputacion con mediana porque son valores numericos y dentro de la columna se distribuyen de forma asimetrica(con sesgos)
mediana_minutes<- median(datos$Minutes, na.rm =TRUE)
datos$Minutes[is.na(datos$Minutes)]<- mediana_minutes

mediana_seasons<- median(datos$Seasons, na.rm =TRUE)
datos$Seasons[is.na(datos$Seasons)]<- mediana_seasons
vis_miss(datos)
