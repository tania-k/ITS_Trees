#!/usr/bin/bash
module unload miniconda2
module load miniconda3
 # make sure biopython env is available for your python
INDIR=aln/rDNA
EXT=aln.clipkit
 if [ ! -f expected_prefixes.lst ]; then
	 cat $INDIR/*.$EXT | grep ">" | awk '{print $1}'  | sort | uniq > expected_prefixes.lst
 fi
./PHYling_unified/util/combine_multiseq_aln.py  --moltype DNA -p rDNA_multi.partitions.txt --expected expected_prefixes.lst  --ext $EXT -d $INDIR -o rDNA_multi.mfa
