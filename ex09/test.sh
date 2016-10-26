#!/bin/sh
declare -A n2=( ['m']=0 ['r']=1 ['d']=2 ['o']=3 ['c']=4 )

for ((i = 0; i<${#FT_NBR2}; i++)); 
do 
    echo ${FT_NBR2:$i:1} 
done
