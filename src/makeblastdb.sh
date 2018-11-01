#$1 is reference contig.fa
module load blast
makeblastdb -in $1 -out genome -dbtype nucl -title "Database_title"
