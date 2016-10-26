#!/bin/sh
n1=( ["'"]=5 ['\\']=6 ['"']=7 ['?']=8 ['!']=9 )
n2=( ['m']=0 ['r']=1 ['d']=2 ['o']=3 ['c']=4 )

for ((i = 0; i<${#FT_NBR1}; i++)); 
do 
    echo ${n1[${FT_NBR1:$i:1}]} 
done

for ((i = 0; i<${#FT_NBR2}; i++)); 
do 
    echo ${n2[${FT_NBR2:$i:1}]} 
done
