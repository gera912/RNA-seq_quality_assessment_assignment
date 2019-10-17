#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --job-name=fastqc
#SBATCH --output=slurm-%j-%x.out

#SBATCH --time=0-01:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=7

module load fastqc/0.11.5
ml

/usr/bin/time -v fastqc /projects/bgmp/shared/2019_Drosphila_RNAseq/RAL306W-F3_S79_L006_R1_001.fastq.gz  --outdir=/home/gperez8/bgmp/projects/bgmp/gperez8/Bi624/fastqc
/usr/bin/time -v fastqc /projects/bgmp/shared/2019_Drosphila_RNAseq/RAL306W-F3_S79_L006_R2_001.fastq.gz   --outdir=/home/gperez8/bgmp/projects/bgmp/gperez8/Bi624/fastqc
/usr/bin/time -v fastqc /projects/bgmp/shared/2019_Drosphila_RNAseq/RAL306W_plus_M3_S78_L006_R1_001.fastq.gz --outdir=/home/gperez8/bgmp/projects/bgmp/gperez8/Bi624/fastqc
/usr/bin/time -v fastqc /projects/bgmp/shared/2019_Drosphila_RNAseq/RAL306W_plus_M3_S78_L006_R2_001.fastq.gz --outdir=/home/gperez8/bgmp/projects/bgmp/gperez8/Bi624/fastqc
