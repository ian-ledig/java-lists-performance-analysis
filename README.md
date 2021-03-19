# P4a : Analyse de performances de différentes structures

[Grille d'évaluation P4a](Evaluation.md)

## Language

Pour cette session de comparaison, nous utilisons le Java.

## Problème

### Description du Problème

Pendant tout notre DUT nous avons utilisé en java principalement les ArrayList<> pour stocker des informations dans un tableau mais est-ce toujours le bon choix. C’est pourquoi nous allons analyser les performances des structures suivantes : [ArrayList<>](https://docs.oracle.com/javase/7/docs/api/java/util/ArrayList.html), [Vector<>](https://docs.oracle.com/javase/7/docs/api/java/util/Vector.html) et [LinkedList<>](https://docs.oracle.com/javase/7/docs/api/java/util/LinkedList.html). Pour savoir quand et pourquoi utiliser une structure ou une autre.

### Paramètres exploratoires du problème

Dans le cadre des tests de comparaison de performance entre une ArrayList et une LinkedList en Java, nous avons mis en place les tests de rapidité et de performance suivants.

- Ajout d'éléments dans chaque liste,
- suppression d'éléments dans chaque list,
- récupération d'éléments dans chaque list.

Ainsi, nous pouvons comparer les résultats sur chaque opération et en déduire laquelle est la plus optimale en fonction de l'utilisation souhaitée avec un bon rapport rapidité/performance CPU utilisé.

## Dispositif expérimental

### Organisation objet

Description de l'organisation des classes et interfaces, ou diagramme de classes.
![Capture](/uploads/8071ae9b0fe4cbe36e4b83c36a1d3604/Capture.PNG)


### Application

[code source de l'application](https://git.unistra.fr/iledig/P4a/-/tree/master/program)

Notre application permet de tester les temps de réponse de différentes structures. Ainsi, on peut la lancer en exécutant le fichier run.sh qui affichera un récapitulatif des temps de réponse. Ainsi, lorsque le fichier d'exécution est lancé, il appelle le programme de test avec les arguments suivants : 

```
Usage : java Main <0/1/2> <insert/remove/get> size
```

<0/1/2> Correspond au type de liste (0 = ArrayList, 1 = LinkedList, 2 = Vector),__
<insert/remove/get> correspond au type d'opération,__
"size" correspond au nombre d'itérations de l'opération choisie.

### Environnement de test

Description de la plateforme de test
```
Extrait pertinent de /proc/cpuinfo
```

### Description de la démarche systématique

Description de la démarche systématique et de l'espace d'exploration pour chaque paramètres.

```
Suite des commandes, ou script, à exécuter pour produire les données.
```

## Résultats préalables

### Temps d'exécution

![plot](prealable.png)

### Consommation mémoire

![plot](prealable-mem.png)

### Analyse des résultats préalables

![Capture](https://git.unistra.fr/iledig/P4a/-/blob/master/screens/graph.png)

On voit que le Vector est celui qui a l'air de consommer le moins de mémoire et qu'il est quasiment équivalent à l'ArrayList au niveau du temps d'exécution. La LinkedList consomme bien plus et utilise un plus grand temps d'exécution. On comprend assez rapidement qu'elle est à utiliser en dernier recours par rapport aux deux autres étudié.__

On peut établir un ordre d'utilisation prioritaire pour consommer le moins de mémoire possible tout en ayant des délais de réponse respectables :__

Vector > ArrayList > LinkedList

### Discussion des résultats préalables

Explications précises et succinctes sur ce que les limites des résultats
préalables et ce qu'ils ne permettent pas de vérifier.

## Etude approfondie

### Hypothèse

Expression précise et succincte d'une hypothèse.

### Protocole expérimental de vérification de l'hypothèse

Expression précise et succincte du protocole.

```
Suite des commandes, ou script, à exécuter pour produire les données.
```

### Résultats expérimentaux

### Analyse des résultats expérimentaux

### Discussion des résultats expérimentaux

## Conclusion et travaux futurs
