#!/bin/bash
file="Demo"
seed=$RANDOM
zzuf -s $seed -r 0.0001:0.001 < $file.mp4 > fuzzed.mp4
date +"%T Fuzzed $file.mp4 with seed $seed" | tee -a log.txt >&2
printf 'Content-Type: video/mp4\r\n\r\n'
cat fuzzed.mp4
