#!/bin/bash

structType[0]="ArrayList"
structType[1]="LinkedList"
structType[2]="Set"

structSize[0]=1000
structSize[1]=25000
structSize[2]=50000
structSize[3]=75000
structSize[4]=100000

nbrOperation[0]=1000
nbrOperation[1]=25000
nbrOperation[2]=50000
nbrOperation[3]=75000
nbrOperation[4]=100000

operationType[0]="add"
operationType[1]="contains"
operationType[2]="remove"

echo -e "Size\tOperation\tNbrOperation\tType\tTime\tMem"

for size in ${structSize[*]}; do
	for operation in ${operationType[*]}; do
		for opSize in ${nbrOperation[*]}; do
			for type in ${structType[*]}; do
				echo -ne "$size\t$operation\t$nbrOperation\t$type"
				res=$((/usr/bin/time -f "\t%U\t%M" java Main.java  $type $size $operation $nbrOperation) 2>&1)
				echo $res >> perf.dat
			done
		done
	done
done

echo "\n\nData saved in : perf.dat \n Launching the .R script...\n"

R --no-save < scriptPourPloter.R

echo "All execution are done !"
