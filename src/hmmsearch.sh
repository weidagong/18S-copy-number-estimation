module load hmmer
# $1 is hmm file, $2 is target genome in protein sequence
hmm=`basename $1|cut -d. -f1`
hmmsearch -o ${hmm}.txt --domtblout ${hmm}.domain.tab -E 0.00001 $1 $2