#!/bin/bash

cd herdan
for i in *
do
    echo $i
    cd $i

    # The input files are zipf.csv and herdan_hapaxes.csv
    
    # tail -n 10 zipf.csv > zipf_tail.csv
    ../../make_tokens.pl < zipf.csv > zipf_tokens.csv
    TT_fof.pl < zipf.csv > spectrum.csv
    ../../make_rank_sparse.pl < spectrum.csv > zipf_sparse.csv
    TT_growth_short_hapaxes_expected.pl < spectrum.csv > herdan_hapaxes_exp.csv
    
    rm -f fit.log
    ../../make_combination_herdan.gpl 2> parameters.txt

    epstopdf token_type.eps token_type.pdf
    epstopdf token_residual.eps token_residual.pdf
    epstopdf frequency_rank.eps frequency_rank.pdf
    epstopdf frequency_rank_tail.eps frequency_rank_tail.pdf
    epstopdf frequency_residual.eps frequency_residual.pdf
    epstopdf token_ratio.eps token_ratio.pdf
    epstopdf token_ratio_residual.eps token_ratio_residual.pdf

    cd ..
done
cd ..

tail -n 150 herdan/*/fit.log > fitlog_herdan.txt
 ./make_parameters_herdan_1.pl < fitlog_herdan.txt
tail -n 12 herdan/*/parameters.txt > parameters_herdan.txt
 ./make_parameters_herdan_2.pl < parameters_herdan.txt
