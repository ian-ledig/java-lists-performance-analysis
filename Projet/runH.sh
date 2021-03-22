#!/bin/bash

file="PerfH.csv"
if [ PerfH.csv ] ; then
 rm PerfH.csv
fi
NTEST=200
STRUCTURE="arraylist vector"

echo "Taille,Test,CPU,Mem,Action,Structure">> PerfH.csv

structure[0]="arraylist"
structure[1]="vector"



action[0]="insert"
action[1]="removeValue_first"
action[2]="removeValue_middle"
action[3]="removeValue_last"
action[4]="changeValue_first"
action[5]="changeValue_middle"
action[6]="changeValue_last"
action[7]="getValue_first"
action[8]="getValue_middle"
action[9]="getValue_last"



  for test in `seq $NTEST`
  do
    for act in ${action[*]}
    do
      taille=0
  		while ((taille<5000000))
  		do
  			taille=$(( RANDOM % 100000 ))000
  		done

    for struct in ${structure[*]}
    do
      res=`(/usr/bin/time -f "%U,%M" java Main $struct $act $taille >/dev/null) 2>&1`
      echo "$taille,$test,$res,$act,$struct"
      echo "$taille,$test,$res,$act,$struct">> PerfH.csv
    done
  done
  done
    R --vanilla < RHscript.R

$SHELL




# NTEST=1
# STRUCTURE="0 1 2"
# ACTION="0 1 2 3 4 5 6 7 8 9"
# echo "Taille,Test,CPU,Mem,Action,Structure"
#
#
#   for test in `seq $NTEST`
#   do
#     for act in `seq $ACTION`
#     do
#     taille=${RANDOM}000
#     for struct in `seq $STRUCTURE`
#     do
#
#       res=`(/usr/bin/time -f "%U,%M" java Main $struct $act $taille >/dev/null) 2>&1`
#
#       echo "$taille,$test,$res,$act,$struct"
#     done
#   done
#   done
# $SHELL
