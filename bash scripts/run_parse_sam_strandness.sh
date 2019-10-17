#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --job-name=parse_sam
#SBATCH --output=slurm-%j-%x.out

#SBATCH --time=0-12:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=7

conda deactivate
conda deactivate
conda deactivate
conda deactivate
conda activate bgmp_py3



/usr/bin/time -v python parse_sam_strand.py -f aligned_RAL306W-F3_S79_L006_rRNA____Aligned.out.sam

/usr/bin/time -v python parse_sam_strand.py -f aligned_RAL306W_plus_M3_S78_L006_rRNA____Aligned.out.sam
