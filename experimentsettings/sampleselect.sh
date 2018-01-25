#!/bin/bash

# select samples to be analysed by EpiBLAST
# Usage: ./run.sh roadmapsamples core18idx

samples=$1
core18idx=$2

grep -E "\<SD\>" ${samples} > ${samples}SD
grep -E "\<C\>" ${samples} > ${samples}C

rm ${samples}_core18
while read line ; do
    read -a strline <<< "$line"
    existsample=`grep ${strline[0]} ${core18idx}| wc -l`
    if [ ${existsample} != 0 ]
    then
        echo "$line" >>${samples}_core18
    fi
done < "$1"

grep -E "\<SD\>" ${samples}_core18 > ${samples}_core18SD
grep -E "\<C\>" ${samples}_core18 > ${samples}_core18C

