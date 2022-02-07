#!/usr/bin/bash
#SBATCH -p short -N 1 -n 4 --mem 8gb --out rDNA.iqtree_%A.log

module unload miniconda2
module load miniconda3
module load IQ-TREE/2.1.1

iqtree2 -s Knuf.rDNA_multi.mfa -p Knufia_multi.partitions.nex -nt AUTO -pre Knuf.rDNA_multi.partitioned -bb 1000 -alrt 1000 


#perl PHYling_unified/util/rename_tree_nodes.pl Knuf.rDNA_multi.partitioned.treefile Knuf.prefix.tab > Knuf.rDNA_multi.partitioned.long_names.tre

