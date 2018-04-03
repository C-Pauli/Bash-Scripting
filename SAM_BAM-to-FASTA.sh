#Awk one liner to turn SAM/BAM file into a fasta formatted file
samtools view filename.bam | awk '{OFS="\t"; print ">"$1"\n"$10}' - > filename.fasta
