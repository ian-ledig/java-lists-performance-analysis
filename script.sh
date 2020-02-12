#!/bin/bash

structType[0]="ArrayList"
structType[1]="LinkedList"
structType[2]="Set"

structSize[0]=1000
structSize[1]=25000
structSize[2]=50000

operationSize[0]=1000 
operationSize[1]=25000
operationSize[2]=50000

operationType[0]="add"
operationType[1]="contains"
operationType[2]="remove"

echo -e "Size\tOperation\tOpSize\tType\tTime\tMem"

for size in ${structSize[*]}; do
	for operation in ${operationType[*]}; do
		for opSize in ${operationSize[*]}; do
			for type in ${structType[*]}; do
				echo -ne "$size\t$operation\t$opSize\t$type"
				/usr/bin/time -f "\t%U\t%M" java Main.java  $type $size $operation $opSize 2>&1
			done
		done
	done
done
