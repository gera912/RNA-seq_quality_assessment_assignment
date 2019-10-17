#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --job-name=star_aligner
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


file1="/home/gperez8/bgmp/projects/bgmp/gperez8/Bi624/RAL306W-F3_S79_L006_R1_001_cutadapt.fastq.gz"
file2="/home/gperez8/bgmp/projects/bgmp/gperez8/Bi624/RAL306W-F3_S79_L006_R2_001_cutadapt.fastq.gz"
genomeDir="/home/gperez8/bgmp/projects/bgmp/gperez8/Bi624/Drosophila_melanogaster.BDGP6.22._RNA_.STAR_2.7.1a"




/usr/bin/time -v STAR --runThreadN 7 --runMode alignReads --outFilterMultimapNmax 3 \
  --outSAMunmapped Within KeepPairs \
  --readFilesCommand zcat \
  --readFilesIn $file1 $file2   --genomeDir $genomeDir \
  --outFileNamePrefix aligned_RAL306W-F3_S79_L006_rRNA____ --genomeSAindexNbases 4
