#Made for Single end sequences, not paired-end reads
#Calls upon KAPA-Dual-Index adapters as trimmer and removes only first five bases to raise overall quality
#Uses minimal quality trimming, ususally drops .5% of reads to conserve short read RNA-seq

FILES=`ls *_R*_001.fastq.gz | sed 's/R1_001.fastq.gz//g'`
for F in $FILES ; do


TrimmomaticSE -threads 30 -phred33 ${F}R1_001.fastq.gz ${F}_Trimmed.fastq.gz "ILLUMINACLIP:/usr/share/trimmomatic/KAPA-Dual-Index-Illumina-Universal.fa:2:20:5:3:true HEADCROP:5"
done
~

