#!/bin/bash -l
#SBATCH -n 1
#SBATCH --time=3-24:00:00
#SBATCH -J Download		#Job Name
#SBATCH -o Download.%A.out
#SBATCH -e Download.%A.err


#1 is SRA acc number

module load sratoolkit

fastq-dump --readids --split-3 $1
