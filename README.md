# NGS_Data_Preprocessing
#
1. The script is design ed and tested in ubuntu version 20.04 (LTS).
2. The script will merge multiple ple read1 and read2 files to a single file.
3. It also preserve the original filenames in a different text file.(To save the plateform IDs, libray prep. protocol.)
4. Place the script in the main directory where all the samples are kept run using sh command.
5. There is no need of any kind of other programms aor tools to install. 

The script assumes the Original directory as: (Tree View):

DIR:Sample1-> sample1_true_seq_L1_R1.fastq.gz , sample1_true_seq_L1_R2.fastq.gz, sample1_true_seq_L2_R1.fastq.gz, sample1_true_seq_L2_R2.fastq.gz

DIR:Sample2-> sample2_true_seq_L1_R1.fastq.gz, sample2_true_seq_L1_R2.fastq.gz, sample2_true_seq_L2_R1.fastq.gz, sample2_true_seq_L2_R2.fastq.gz

OR

DIR:sample1-> barcode1_0.fastq.gz, barcode1_1.fastq.gz, barcode1_2.fastq.gz, barcode1_3.fastq.gz

OUTPUT:

DIR:Sample1-> sample1_R1.fastq.gz , sample1_R2.fastq.gz

DIR:Sample2-> sample2_R1.fastq.gz,  sample2_R2.fastq.gz

OR

DIR:sample1-> barcod_sample1.fastq.gz


Thanks!
