#!/usr/bin/env Rscript

library(ggplot2)
library(dplyr)
perf <- read.table("Perf.csv",sep=",",dec=".", header=TRUE)

attach(perf)

ggplot(perf,aes(x=Taille,y=CPU,color=Structure)) +
geom_smooth() +
geom_point() +
facet_grid(Structure ~ Action) +
ggtitle("Consommation CPU")
ggsave("img/Graph_Time.png")


ggplot(perf,aes(x=Taille,y=CPU,color=Structure)) +
geom_smooth() +
geom_point() +
filter(perf, Structure != "linkedlist")+
facet_grid(Structure ~ Action)+
ggtitle("Consommation_CPU_VA")
ggsave("img/Graph_Time_VA.png")

ggplot(perf,aes(x=Taille,y=CPU,color=Structure)) +
geom_smooth() +
geom_point() +
coord_cartesian(y=c(0,2))+
facet_grid(Structure ~ Action)+
ggtitle("Consommation CPU VA")
ggsave("img/Graph_Time_VA2.png")

ggplot(perf,aes(x=Taille,y=Mem,color=Structure)) +
geom_smooth() +
geom_point() +
facet_grid(Structure ~ Action) +
ggtitle("Consommation mémoire") +
ggsave("img/Graph_Mem.png")

ggplot(perf,aes(x=Taille,y=Mem,color=Structure)) +
geom_smooth() +
geom_point() +
filter(perf, Structure != "linkedlist")+
facet_grid(Structure ~ Action)+
ggtitle("Consommation_CPU_VA")
ggsave("imgAnalyse/Graph_Memoire_VA.png")

ggplot(perf,aes(x=Taille,y=Mem,color=Structure)) +
geom_smooth() +
geom_point() +
coord_cartesian(y=c(50000,170000))+
facet_grid(Structure ~ Action) +
ggtitle("Consommation mémoire VA") +
ggsave("imgAnalyse/Graph_Memoire_VA2.png")


ggplot(perf[perf$Action=="getValue_first" | perf$Action=="getValue_middle" | perf$Action=="getValue_last"
	 & perf$Structure=="linkedlist",], aes(x=Taille, y=CPU, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)
		 ggtitle("CPU d'accès à une LinkedList")
ggsave("imgAnalyse/linkedList_get.png")

ggplot(perf[perf$Action=="getValue_first" & perf$Structure=="arraylist" | perf$Action=="getValue_middle" & perf$Structure=="arraylist" | perf$Action=="getValue_last"
	 & perf$Structure=="arraylist",], aes(x=Taille, y=CPU, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)
		 ggtitle("CPU d'accès à une ArrayList")
ggsave("imgAnalyse/arraylist_get.png")

ggplot(perf[perf$Action=="getValue_first" & perf$Structure=="vector" | perf$Action=="getValue_middle" & perf$Structure=="vector" | perf$Action=="getValue_last"
	 & perf$Structure=="vector",], aes(x=Taille, y=CPU, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)
		 ggtitle("CPU d'accès à un Vecteur")
ggsave("imgAnalyse/vector_get.png")

ggplot(perf[perf$Action=="changeValue_first" & perf$Structure=="arraylist" | perf$Action=="changeValue_middle" & perf$Structure=="arraylist" | perf$Action=="changeValue_last"
	 & perf$Structure=="arraylist",], aes(x=Taille, y=CPU, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)
		 ggtitle("CPU de modification d'un objet d'une ArrayList")
ggsave("imgAnalyse/arraylist_modify.png")

ggplot(perf[perf$Action=="changeValue_first" & perf$Structure=="vector" | perf$Action=="changeValue_middle" & perf$Structure=="vector" | perf$Action=="changeValue_last"
	 & perf$Structure=="vector",], aes(x=Taille, y=CPU, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)
		 ggtitle("CPU de modification d'un objet d'un Vecteur")
ggsave("imgAnalyse/vector_modify.png")

ggplot(perf[perf$Action=="changeValue_first" & perf$Structure=="linkedlist" | perf$Action=="changeValue_middle" & perf$Structure=="linkedlist" | perf$Action=="changeValue_last"
	 & perf$Structure=="linkedlist",], aes(x=Taille, y=CPU, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)
		 ggtitle("CPU de modification d'un objet d'une LinkedList")
ggsave("img/linkedlist_modify.png")

ggplot(perf[perf$Action=="removeValue_first" & perf$Structure=="arraylist" | perf$Action=="removeValue_middle" & perf$Structure=="arraylist" | perf$Action=="removeValue_last"
	 & perf$Structure=="arraylist",], aes(x=Taille, y=CPU, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)
		 ggtitle("CPU de suppresion d'un objet d'une ArrayList")
ggsave("img/arraylist_remove.png")

ggplot(perf[perf$Action=="removeValue_first" & perf$Structure=="vector" | perf$Action=="removeValue_middle" & perf$Structure=="vector" | perf$Action=="removeValue_last"
	 & perf$Structure=="vector",], aes(x=Taille, y=CPU, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)
		 ggtitle("CPU de suppresion d'un objet d'un Vecteur")
ggsave("img/vector_remove.png")

ggplot(perf[perf$Action=="removeValue_first" & perf$Structure=="linkedlist" | perf$Action=="removeValue_middle" & perf$Structure=="linkedlist" | perf$Action=="removeValue_last"
	 & perf$Structure=="linkedlist",], aes(x=Taille, y=CPU, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)
		 ggtitle("CPU de suppresion d'un objet d'une LinkedList")
ggsave("img/linkedlist_remove.png")

Memory

ggplot(perf[perf$Action=="getValue_first" & perf$Structure=="arraylist" | perf$Action=="getValue_middle" & perf$Structure=="arraylist" | perf$Action=="getValue_last"
	 & perf$Structure=="arraylist",], aes(x=Taille, y=Mem, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)
		 ggtitle("Mem nécessaire pour accéder à une ArrayList")
ggsave("img/arraylist_memory_get.png")

ggplot(perf[perf$Action=="getValue_first" & perf$Structure=="vector" | perf$Action=="getValue_middle" & perf$Structure=="vector" | perf$Action=="getValue_last"
	 & perf$Structure=="vector",], aes(x=Taille, y=Mem, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)
		 ggtitle("Mem nécessaire pour accéder  à un Vecteur")
ggsave("img/vector_memory_get.png")

ggplot(perf[perf$Action=="getValue_first" | perf$Action=="getValue_middle" | perf$Action=="getValue_last"
	 & perf$Structure=="linkedlist",], aes(x=Taille, y=Mem, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)
		 ggtitle("Mem nécessaire pour accéder à une LinkedList")
ggsave("img/linkedList_memory_get.png")

ggplot(perf[perf$Action=="changeValue_first" & perf$Structure=="arraylist" | perf$Action=="changeValue_middle" & perf$Structure=="arraylist" | perf$Action=="changeValue_last"
	 & perf$Structure=="arraylist",], aes(x=Taille, y=Mem, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)
		 ggtitle("Mémoire nécessaire pour la modification d'un objet d'une ArrayList")
ggsave("img/arraylist_modify_memory.png")

ggplot(perf[perf$Action=="changeValue_first" & perf$Structure=="vector" | perf$Action=="changeValue_middle" & perf$Structure=="vector" | perf$Action=="changeValue_last"
	 & perf$Structure=="vector",], aes(x=Taille, y=Mem, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)
		 ggtitle("Mémoire nécessaire pour la modification d'un objet d'un Vecteur")
ggsave("img/vector_modify_memory.png")

ggplot(perf[perf$Action=="changeValue_first" & perf$Structure=="linkedlist" | perf$Action=="changeValue_middle" & perf$Structure=="linkedlist" | perf$Action=="changeValue_last"
	 & perf$Structure=="linkedlist",], aes(x=Taille, y=Mem, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)
		 ggtitle("Mémoire nécessaire pour la modification d'un objet d'une LinkedList")
ggsave("img/linkedlist_modify_memory.png")

ggplot(perf[perf$Action=="removeValue_first" & perf$Structure=="arraylist" | perf$Action=="removeValue_middle" & perf$Structure=="arraylist" | perf$Action=="removeValue_last"
	 & perf$Structure=="arraylist",], aes(x=Taille, y=Mem, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)
		 ggtitle("Mémoire nécessaire pour la suppresion d'un objet d'une ArrayList")
ggsave("img/arraylist_remove_memory.png")

ggplot(perf[perf$Action=="removeValue_first" & perf$Structure=="vector" | perf$Action=="removeValue_middle" & perf$Structure=="vector" | perf$Action=="removeValue_last"
	 & perf$Structure=="vector",], aes(x=Taille, y=Mem, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)
		 ggtitle("Mémoire nécessaire pour la suppresion d'un objet d'un Vecteur")
ggsave("img/vector_remove_memory.png")

ggplot(perf[perf$Action=="removeValue_first" & perf$Structure=="linkedlist" | perf$Action=="removeValue_middle" & perf$Structure=="linkedlist" | perf$Action=="removeValue_last"
	 & perf$Structure=="linkedlist",], aes(x=Taille, y=Mem, color=Action)) + geom_point() + geom_smooth() + facet_grid(.~Action)
		 ggtitle("Mémoire nécessaire pour la suppresion d'un objet d'une LinkedList")
ggsave("img/linkedlist_remove_memory.png")
