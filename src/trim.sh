#$R1 and $R2 are forward and reverse fastq reads
module load trimmomatic
trimmomatic PE -threads 8 -trimlog trim/log/trimlog_$1.log ${R1} ${R2} trim/${R1}_paired.fastq trim/${R1}_unpaired.fastq trim/${R2}_paired.fastq trim/${R2}_unpaired.fastq LEADING:5 TRAILING:5 SLIDINGWINDOW:4:20 MINLEN:36