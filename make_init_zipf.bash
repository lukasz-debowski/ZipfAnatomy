#!/bin/bash

# cat nkjp300M_counts_sorted.tab.xz | unxz | T_normalize.pl | sort -k 2 | T_uniq.pl | sort -nr | xz > nkjp300M_counts_sorted_normalized.tab.xz

# cat nkjp2G_counts_sorted.tab.xz | unxz | T_normalize.pl | sort -k 2 | T_uniq.pl | sort -nr | xz > nkjp2G_counts_sorted_normalized.tab.xz

mkdir zipf

mkdir zipf/NKJP-300M

cat ~/korpusy/nkjp_freq/300M/nkjp300M_counts_sorted_normalized.tab.xz | unxz | TT_ranks_from_no_ranks.pl | TT_ranks_short.pl | TT_fof.pl > zipf/NKJP-300M/spectrum.csv 

mkdir zipf/NKJP-2G

cat ~/korpusy/nkjp_freq/2G/nkjp2G_counts_sorted_normalized.tab.xz | unxz | TT_ranks_from_no_ranks.pl | TT_ranks_short.pl | TT_fof.pl > zipf/NKJP-2G/spectrum.csv 

mkdir zipf/NKJP-2G-D

cat ~/korpusy/nkjp_freq/2G/nkjp2G_counts_sorted_normalized.tab.xz | unxz | T_grep.pl d yes | TT_ranks_from_no_ranks.pl | TT_ranks_short.pl | TT_fof.pl > zipf/NKJP-2G-D/spectrum.csv 
