#!/bin/bash

for i in {00001..00588}
do
cat header.in supercell-$i.in > ./input/Al-$i.in;
mpirun -np 10 pw.x < ./input/Al-$i.in > ./output/Al-$i.out;
done 
