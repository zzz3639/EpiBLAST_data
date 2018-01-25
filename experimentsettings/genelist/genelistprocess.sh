#!/bin/bash

#usage: ./run.sh geneid processingfolder
infile=$1
outfile="$2"geneidprocessed

geneidshort="$2"geneid5line

awk '{print $2"\t"$3"\t"$4"\t"$5"\t"$6}' ${infile} > ${geneidshort}

grep '\<chr[0-9XYM]*\>' ${geneidshort} > ${outfile}

