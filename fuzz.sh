#!/bin/bash
file="integral"
seed=$RANDOM
zzuf -s $seed -r 0.00001:0.0001 < $file.pdf > fuzzed.pdf
date +"%T Fuzzed $file.pdf with seed $seed" | tee -a log.txt >&2
printf 'Content-Type: application/pdf\r\n\r\n'
cat fuzzed.pdf
