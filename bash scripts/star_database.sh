#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --job-name=Star_database
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



genomeDir="/home/gperez8/bgmp/projects/bgmp/gperez8/Bi624/Drosophila_melanogaster.BDGP6.22._RNA_.STAR_2.7.1a"
genomeFastaFiles="/home/gperez8/bgmp/projects/bgmp/gperez8/Bi624/Drosophila_melanogaster.BDGP6.22.RNA.fa"


mkdir -p $genomeDir



/usr/bin/time -v STAR --runThreadN 7 --runMode genomeGenerate \
    --genomeDir $genomeDir \
    --genomeFastaFiles $genomeFastaFiles --genomeSAindexNbases 4 \
