#!/usr/bin/bash

#SBATCH --nodes 1 --ntasks 2 -p short --mem 8gb --out logs/IQtree%a.%A.log

module load IQ-TREE/2.1.1 
module load vcftools
module unload perl
module unload miniconda2
module load miniconda3

iqtree2 -nt 2 -s 115.SSU.aln -b 1000
