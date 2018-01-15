#!/bin/bash

model=${1:-"small"}
echo "Training $model PTB model"

python -u ptb_word_lm.py $@ &> ptb_${model}.log

curl "https://api.simplepush.io/send/4B4a4N/ExperimentDone/$model $(hostname)"
