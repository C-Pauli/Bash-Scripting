#Make sure to have trimmed files named {File_Name}_Trimmed.fastq.gz 

#Sed command creates a base file name for all files downstreamed to be named properly

FILES=`ls *Trimmed.fastq.gz | sed 's/.fastq.gz//g'`
for F in $FILES ; do

#Map the Reads to Transcriptome
bwa mem ../Trinity.fasta ${F}.fastq.gz > ${F}.sam

#Transform Sam to Bam File
samtools view ${F}.sam ${F}.bam

#Generate Statistics for the alignment and save those as a txt file
samtools flagstat ${F}.bam > ${F}.txt

done
~

