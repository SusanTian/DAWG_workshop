# SRA ToolKit
Sequencing files are usually stored in databases such as NCBI and the ENA (European Nucleotide Archive). What if we want to download the sequenced and use them in our analysis? The SRA toolkit by NCBI is the solution in this case. SRA toolkit provides tools for downloading data, converting different formats of data into SRA dormat, and the vice versa, turning SRA data into different formats. 

The most frequently used tool from the toolkit would be fastq-dump that fetch SRA files and download them as fastq formats into our own directories. This page will provide information on how to install the SRA toolkit and use fastq-dump to download sequencing files for downstream analysis. 

# Installation
Please note the following instructions is for Ubuntu system only, and if you would like to install the toolkit for other systems, please download and install the correct package listed in this [page](https://github.com/ncbi/sra-tools/wiki/02.-Installing-SRA-Toolkit) for the system of choice to prevent configuration issues. 

1. Fetch the tar files from the NCBI: 
```
wget --output-document sratoolkit.tar.gz https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/current/sratoolkit.current-ubuntu64.tar.gz
```

2. Extract the contents from the tar file:
```
tar -vxzf sratoolkit.tar.gz
```
-v verbose shows the files tar works on while the command is running
-x extract extract one or more items from an archive
-z read or write compressed archives through bzip2 format
-f specifies the file
