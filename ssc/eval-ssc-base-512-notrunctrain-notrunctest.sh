#!/bin/bash

CUDA_VISIBLE_DEVICES=6 PYTHONPATH=.. python3 run_classifier.py \
  --task_name ssc \
  --do_eval \
  --do_lower_case \
  --data_dir ~/data-eval \
  --bert_model bert-base-uncased \
  --max_seq_length 512 \
  --filter_long_sequences_train \
  --filter_long_sequences_eval \
  --train_batch_size 128 \
  --eval_batch_size 128 \
  --learning_rate 2e-5 \
  --num_train_epochs 3.0 \
  --output_dir ~/eval/ssc-base-512-notrunctrain-notrunctest/

