FILES=`ls *Trimmed.fastq.gz | sed 's/.fastq.gz//g'`
for F in $FILES ; do

bwa mem ../Trinity.fasta ${F}.fastq.gz > ${F}.sam
samtools view ${F}.sam ${F}.bam
samtools flagstat ${F}.bam > ${F}.txt

done
~

