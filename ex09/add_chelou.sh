#!/bin/sh
output1="$(echo $FT_NBR1 | sed -e "s/\'/0/g" -e 's/\\/1/g' -e 's/\"/2/g' -e 's/\?/3/g' -e "s/\!/4/g")"

output2="$(echo $FT_NBR2 | sed -e 's/m/0/g' -e 's/r/1/g' -e 's/d/2/g' -e 's/o/3/g' -e "s/c/4/g")"

#echo "${output1}"
#echo "${output2}"

o1="$(echo "ibase=5; ${output1}" | bc)"
o2="$(echo "ibase=5; ${output2}" | bc)"

#echo "${o1}"
#echo "${o2}"

sum="$(echo "${o1} + ${o2}" | bc)"
#echo "${sum}"

con="$(echo "obase=13;${sum}" | bc)"
#echo "${con}"

echo ${con} | sed -e 's/0/g/g' -e 's/1/t/g' -e 's/2/a/g' -e 's/3/i/g' -e 's/4/o/g' -e 's/5/ /g' -e 's/6/l/g' -e 's/7/u/g' -e 's/8/S/g' -e 's/9/n/g' -e 's/A/e/g' -e 's/B/m/g' -e 's/C/f/g' 
