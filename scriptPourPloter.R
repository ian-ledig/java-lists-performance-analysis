#!/bin/R
library(ggplot2) #a copier en premier après la commande "R" (juste R dan le terminal)

#Récupération des données :
perf <- read.table("perf.dat", header=TRUE) #deuxième commande

ggplot(perf,aes(x=NbrOperation, y=Time)) + geom_point() + facet_grid(Size~Operation)
ggsave("image/perf.png") #crée l'image

ggplot(perf,aes(x=NbrOperation, y=Time, colour=Size)) + geom_point() + geom_smooth() + facet_grid(Type~Operation)
ggsave("image/time_exec.png")

ggplot(subset(perf,Type=="Set"),aes(x=NbrOperation, y=Time, colour=Size)) + geom_point() + geom_smooth() + facet_grid(Type~Operation)
ggsave("image/time_exec_set.png")
