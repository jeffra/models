#!/bin/bash

model=${1:-"small"}
echo "Training $model PTB model"

python -u ptb_word_lm.py $@ &> ptb_small.log
