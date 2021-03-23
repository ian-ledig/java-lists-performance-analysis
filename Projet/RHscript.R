#!/usr/bin/env Rscript

library(ggplot2)
library(dplyr)
perf <- read.table("PerfH.csv",sep=",",dec=".", header=TRUE)

attach(perf)


 ggplot(perf[perf$Action=="getValue_first" & perf$Structure=="vector" | perf$Action=="getValue_middle" & perf$Structure=="vector" | perf$Action=="getValue_last"
 		& perf$Structure=="vector",], aes(x=Taille, y=CPU, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action) +ggtitle("CPU d'accès à un Vecteur")
 ggsave("imgH/vector_get_hypothese.png")

 ggplot(perf[perf$Action=="getValue_first" & perf$Structure=="vector" | perf$Action=="getValue_middle" & perf$Structure=="vector" | perf$Action=="getValue_last"
 		& perf$Structure=="vector",], aes(x=Taille, y=Mem, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action) +ggtitle("Mémoire utilisée à l'accès d'un Vecteur")
 ggsave("imgH/vector_get_hypothese_memory.png")

 ggplot(perf[perf$Action=="changeValue_first" & perf$Structure=="vector" | perf$Action=="changeValue_middle" & perf$Structure=="vector" | perf$Action=="changeValue_last"
 		& perf$Structure=="vector",], aes(x=Taille, y=CPU, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action) +ggtitle("CPU de modification d'un objet d'un Vecteur")
 ggsave("imgH/vector_modify_hypothese.png")

 ggplot(perf[perf$Action=="changeValue_first" & perf$Structure=="vector" | perf$Action=="changeValue_middle" & perf$Structure=="vector" | perf$Action=="changeValue_last"
 		& perf$Structure=="vector",], aes(x=Taille, y=Mem, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action) +ggtitle("Mémoire nécessaire à la modification d'un objet d'un Vecteur")
 ggsave("imgH/vector_modify_hypothese_memory.png")

ggplot(perf[perf$Action=="removeValue_first" & perf$Structure=="vector" | perf$Action=="removeValue_middle" & perf$Structure=="vector" | perf$Action=="removeValue_last"
		& perf$Structure=="vector",], aes(x=Taille, y=CPU, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)+ggtitle("CPU nécessaire pour la suppresion d'un objet d'un Vecteur")
ggsave("imgH/vector_remove_hypothese.png")

 ggplot(perf[perf$Action=="removeValue_first" & perf$Structure=="vector" | perf$Action=="removeValue_middle" & perf$Structure=="vector" | perf$Action=="removeValue_last"
 		& perf$Structure=="vector",], aes(x=Taille, y=Mem, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)+ggtitle("Mémoire nécessaire pour la suppresion d'un objet d'un Vecteur")
 ggsave("imgH/vector_remove_hypothese_memory.png")

ArrayList
 ggplot(perf[perf$Action=="getValue_first" & perf$Structure=="arraylist" | perf$Action=="getValue_middle" & perf$Structure=="arraylist" | perf$Action=="getValue_last"
 		& perf$Structure=="arraylist",], aes(x=Taille, y=CPU, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action) + ggtitle("CPU d'accès à une ArrayList")
 ggsave("imgH/arraylist_get_hypothese.png")

 ggplot(perf[perf$Action=="getValue_first" & perf$Structure=="arraylist" | perf$Action=="getValue_middle" & perf$Structure=="arraylist" | perf$Action=="getValue_last"
 		& perf$Structure=="arraylist",], aes(x=Taille, y=Mem, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action) + ggtitle("Mémoire utilisé d'accès à une ArrayList")
 ggsave("imgH/arraylist_get_hypothese_memory.png")

 ggplot(perf[perf$Action=="changeValue_first" & perf$Structure=="arraylist" | perf$Action=="changeValue_middle" & perf$Structure=="arraylist" | perf$Action=="changeValue_last"
 		& perf$Structure=="arraylist",], aes(x=Taille, y=CPU, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action) +ggtitle("CPU de modification d'un objet d'une Arraylist")
 ggsave("imgH/arraylist_modify_hypothese.png")

 ggplot(perf[perf$Action=="changeValue_first" & perf$Structure=="arraylist" | perf$Action=="changeValue_middle" & perf$Structure=="arraylist" | perf$Action=="changeValue_last"
 		& perf$Structure=="arraylist",], aes(x=Taille, y=Mem, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action) +ggtitle("Mémoire utilisé pour modifier un objet d'une ArrayList")
 ggsave("imgH/arraylist_modify_hypothese_memory.png")

 ggplot(perf[perf$Action=="removeValue_first" & perf$Structure=="arraylist" | perf$Action=="removeValue_middle" & perf$Structure=="arraylist" | perf$Action=="removeValue_last"
 		& perf$Structure=="arraylist",], aes(x=Taille, y=CPU, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)+ggtitle("CPU nécessaire pour la suppresion d'un objet d'une ArrayList")
 ggsave("imgH/arraylist_remove_hypothese.png")

 ggplot(perf[perf$Action=="removeValue_first" & perf$Structure=="arraylist" | perf$Action=="removeValue_middle" & perf$Structure=="arraylist" | perf$Action=="removeValue_last"
 		& perf$Structure=="arraylist",], aes(x=Taille, y=Mem, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)+ggtitle("Mémoire nécessaire pour la suppresion d'un objet d'une ArrayList")
 ggsave("imgH/arraylist_remove_hypothese_memory.png")
