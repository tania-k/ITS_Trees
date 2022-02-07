#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks=15
#SBATCH --mem-per-cpu=3G
#SBATCH --time=5:00:00
#SBATCH -p intel

module load ITSx
module unload perl/5.20.2 
module load perl/5.14.2

ITSx -i 119.fa -o 119 --save_regions all --preserve True
