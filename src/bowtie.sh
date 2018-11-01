#default 500 insert size, need to modify insert size for different libraries
#$1 is reference-contig.fa, $2 is output_database name, $R1 and $R2 are forward and reverse fastq reads
module load bowtie2
bowtie2-build --threads 4 $1 $2
bowtie2 -p 16 --local --no-unal --phred33 -x $2 -1 $R1 -2 $R2 -S bowtie/$2.sam --met-file bowtie/$2-metric.txt