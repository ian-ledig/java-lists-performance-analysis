#!/bin/R

library(ggplot2) #a copier en premier après la commande "R" (juste R dan le terminal)

perf <- read.table("perf.dat", header=TRUE) #deuxième commande

ggplot(perf,aes(x=OpSize, y=Time)) + geom_point() + facet_grid(Size~Operation)

ggsave("perf.png") #crée l'image
