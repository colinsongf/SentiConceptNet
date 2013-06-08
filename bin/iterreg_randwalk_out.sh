#!/usr/bin/env sh

. $( dirname "$0" )/config.cfg

mkdir -p $data/iterreg_randwalk_out
for i in {1..9};
do
    python $src/main.py randwalk \
        --edges $data/graph/edges.tsv \
        --seed  $data/iterreg/r8.txt \
        --pred  $data/iterreg_randwalk_out/r$i.txt \
        --alpha 0.$i \
        --axis 0
done
