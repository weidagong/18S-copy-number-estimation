# $1 is fastq file (input)
module load fastqc
fastqc -t 8 --outdir FastQC $1