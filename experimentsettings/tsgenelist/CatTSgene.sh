#!/bin/bash

# Usage: ./run.sh file tissue outputfolder

infile=$1
tissue=$2
tsgeneshort="$3"tsgene6line
tsgeneout="$3"${tissue}genes

awk '{print $1"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7}' ${infile} > ${tsgeneshort}
grep "\<${tissue}\>" ${tsgeneshort} > ${tsgeneout}6line
awk '{print $2"\t"$3"\t"$4"\t"$5"\t"$6}' ${tsgeneout}6line > ${tsgeneout}
rm ${tsgeneout}6line

