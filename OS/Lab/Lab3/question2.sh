#!/bin/bash
read -p 'Length: ' l
read -p 'Breadth: ' b
area=$((l*b))
peri=$((2*(l+b)))
printf "Perimeter $peri\n Area $area\n  "
read -p 'radius: ' r
areac=$(echo "3.14*$r*$r" | bc  )
circ=$(echo "3.14*2*$r" | bc)
printf "Circumference $circ\n Area $areac"