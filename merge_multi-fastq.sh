#! /usr/bin/bash

echo "Ranjan Jyoti Sarma"
echo "Department of Biotechnology, Mizoram University"
echo -e ("\n")
echo "Avialable samples are:"
ls -d
echo "Started at:" $(date)>./CONV.SH.LOG.txt

for dir in ./*/
do
	dir=${dir%/}
	ls -l ./${dir##*/} > ./${dir##*/}/${dir##*/}_Original_File_name.txt
	echo "Running in sample: "${dir##*/} "at " $(date)
	echo "Running in sample: "${dir##*/} "at " $(date)>>./CONV.SH.LOG.txt
	gunzip -N ./${dir##*/}/*.gz
	cat ./${dir##*/}/*_R1.fastq>./${dir##*/}/R1.fastq
	cat ./${dir##*/}/*_R2.fastq>./${dir##*/}/R2.fastq
	bgzip -c ./${dir##*/}/R1.fastq > ./${dir##*/}/R1.fastq.gz
	bgzip -c ./${dir##*/}/R2.fastq > ./${dir##*/}/R2.fastq.gz
	echo "Finished run in sample: "${dir##*/} "at " $(date)>>./CONV.SH.LOG.txt
	echo "Finished run in sample: "${dir##*/} "at " $(date)
done
echo "Merging of all files completed at: " $(date)>>./CONV.SH.LOG.txt

exit
