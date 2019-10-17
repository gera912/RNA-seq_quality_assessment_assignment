#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --job-name=cutadapt_pair
#SBATCH --output=slurm-%j-%x.out

#SBATCH --time=0-12:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1

conda deactivate
conda deactivate
conda deactivate
conda deactivate
conda activate bgmp_py3

module load easybuild  icc/2017.1.132-GCC-6.3.0-2.27  impi/2017.1.132
module load cutadapt/1.18-Python-3.7.0




file1="/projects/bgmp/shared/2019_Drosphila_RNAseq/RAL306W-F3_S79_L006_R1_001.fastq.gz"
file2="/projects/bgmp/shared/2019_Drosphila_RNAseq/RAL306W-F3_S79_L006_R2_001.fastq.gz"
file3="/projects/bgmp/shared/2019_Drosphila_RNAseq/RAL306W_plus_M3_S78_L006_R1_001.fastq.gz"
file4="/projects/bgmp/shared/2019_Drosphila_RNAseq/RAL306W_plus_M3_S78_L006_R2_001.fastq.gz"






/usr/bin/time -v cutadapt -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA -A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
 -o RAL306W-F3_S79_L006_R1_001_cutadapt.fastq.gz   -p RAL306W-F3_S79_L006_R2_001_cutadapt.fastq.gz $file1 $file2 -m 30
/usr/bin/time -v cutadapt -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA -A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
-o RAL306W_plus_M3_S78_L006_R1_001_cutadapt.fastq.gz -p RAL306W_plus_M3_S78_L006_R2_001_cutadapt.fastq.gz $file3 $file4 -m 30
