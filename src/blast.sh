#$1 is query.fa, $2 is output.txt
module load blast
fmt='7 qseqid sseqid sgi evalue bitscore score length nident mismatch positive qstart qend sstart send qframe staxids stitle'
blastn -query $1 -db Database_title -evalue .0000001 -outfmt "$fmt" > $2