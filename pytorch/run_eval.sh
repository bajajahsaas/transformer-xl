#!/usr/bin/env bash

export MODEL_PATH=/mnt/nfs/work1/696ds-s20/abajaj/nlplab/long-term-context/models/transformer-xl

rm outxl/log.txt # eval.py writes logs here
tgts=(8 16 32 64 128 256 512 1024)
for tgt in "${tgts[@]}"
do
  export MEM_LEN=$tgt
  sbatch --job-name=xl-eval --gres=gpu:1 --partition=2080ti-long --mem=40GB --output=logs/eval.txt run_wt103_base.sh eval ${MEM_LEN} --work_dir ${MODEL_PATH} --out_dir outxl
done