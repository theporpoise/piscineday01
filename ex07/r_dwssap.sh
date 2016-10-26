#!/bin/sh
cat /etc/passwd | awk '!/^#/ {print}' | awk 'NR % 2 == 0 {print}' | cut -d ':' -f 1 | rev | sort -r | awk -v ft1="$FT_LINE1" -v ft2="$FT_LINE2" '{if ((ft2 >= ft1) && (NR>=ft1 && NR<=ft2)) print; else if ((ft1 >= ft2) && (NR>=ft2 && NR<=ft1)) print}' | tr '\n' ',' | sed 's/,$/\./'
