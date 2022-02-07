#!/usr/bin/bash
#SBATCH -p short -N 1 -n 4 --mem 8gb --out rDNA.iqtree_%A.log

module load IQ-TREE/2.1.1

iqtree2 -s rDNA_multi.mfa -p rDNA_multi.partitions.nex -nt AUTO -pre rDNA_multi.partitioned -bb 1000 -alrt 1000 


perl PHYling_unified/util/rename_tree_nodes.pl rDNA_multi.partitioned.treefile prefix.tab > rDNA_multi.partitioned.long_names.tre

