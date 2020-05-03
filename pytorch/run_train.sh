#!/usr/bin/env bash

sbatch --job-name=xl-tr --gres=gpu:4 --partition=2080ti-long --mem=40GB --output=logs/train.txt run_wt103_base.sh train --work_dir outxl
