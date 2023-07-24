# ZipfAnatomy - supplementary materials

This is a collection of bash, Perl, and gnuplot scripts as well as
tables and figures accompanying my paper "Corrections of Zipf's and
Heaps' Laws Derived from Hapax Rate Models".

## Supplementary plots

If you are primarily interested in analysing the supplementary plots
for my paper, go to directories herdan/ and zipf/ and browse the PDF
files.

## Reproducing the results on another dataset

1. Before running these scripts, you need to download plain texts and
frequency lists (these were from the Project Gutenberg corpus and the
National Corpus of Polish in my case) and to put them in appropriate
directories.  To work with other data, you are invited to modify
scripts:

 make_init_herdan.bash

 make_init_zipf.bash

2. The scripts assume that that the Perl scripts from my Github
TypeToken repository are reachable from the bash variable $PATH.

3. The main script is make.bash, it calls everything else and it
generates directories herdan/ and zipf/ that contain tables and
figures.

4. There are two parallel pipelines of text processing. The first
pipeline assumes that you have plain text files as the input. These
are the "herdan" files. Another pipeline assumes that you have
frequency lists as the input. These are the "zipf" files.

Good luck!