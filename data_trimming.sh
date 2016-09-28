

## trim R1 and R2 data with Trimmomatic

java -jar /home/nkane/Trimmomatic-0.36/trimmomatic-0.36.jar PE -phred33 FEN_66_Menegazzia_subsimilis_Plate1_D7_R1.fastq FEN_66_Menegazzia_subsimilis_Plate1_D7_R2.fastq Menegazzia_subsimilis_1_paired.fq.gz Menegazzia_subsimilis_1_unpaired.fq.gz Menegazzia_subsimilis_2_paired.fq.gz Menegazzia_subsimilis_2_unpaired.fq.gz ILLUMINACLIP:/home/nkane/Trimmomatic-0.36/adapters/NexteraPE-PE.fa:2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:4:15 MINLEN:100


## unzip and fastqc on all four generated files
gunzip Menegazzia_subsimilis_1_paired.fq.gz
fastqc Menegazzia_subsimilis_1_paired.fq

gunzip Menegazzia_subsimilis_2_paired.fq.gz
fastqc Menegazzia_subsimilis_2_paired.fq

gunzip Menegazzia_subsimilis_1_unpaired.fq.gz
fastqc Menegazzia_subsimilis_1_unpaired.fq

gunzip Menegazzia_subsimilis_2_unpaired.fq.gz
fastqc Menegazzia_subsimilis_2_unpaired.fq



