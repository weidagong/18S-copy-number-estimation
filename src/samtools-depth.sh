#$sam is alignment file from bowtie2, $1 is SRA no.
module load samtools
samtools view -Sb -F 0x4 $sam -o $1.bam
samtools sort -o $1.sort.bam $1.bam && samtools idxstats $1.sort.bam > $1_idxstats.tab && samtools depth -a $1.sort.bam>$1-depth.tab
touch $1.stats.txt
samtools flagstat $1.sort.bam >> $1.stats.txt
samtools view -F 0x4 $1.sort.bam | cut -f 3 > $1.cts_f4.tmp
sort $1.cts_f4.tmp | uniq -c > $1.counts_f4.tab

