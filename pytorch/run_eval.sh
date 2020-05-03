#!/usr/bin/env bash

export MODEL_PATH=/mnt/nfs/work1/696ds-s20/abajaj/nlplab/long-term-context/models/transformer-xl
export TGT_LEN=128
sbatch --job-name=xl-eval --gres=gpu:1 --partition=2080ti-long --mem=40GB --output=logs/eval.txt run_wt103_base.sh eval ${TGT_LEN} --work_dir ${MODEL_PATH}
