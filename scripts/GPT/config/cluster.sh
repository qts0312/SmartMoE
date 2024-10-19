#!/bin/bash

#export NNODES=2
export NNODES=1
export NODELIST="nico[1-2]"
export FMOE_FASTER_GLBPLC_NETBW="8e9"
export FMOE_FASTER_GLBPLC_NETBW_Bcast="2e9"
export FMOE_FASTER_GLBPLC_GPUTP="112e12"

export CODE_PREFIX=$AEROOT/src/Megatron-LM

#export DATASET_PREFIX=/mnt/znvme/zms/fastmoe-dataset
export DATASET_PREFIX=/workspace/SmartMoE/dataset
#export GPT_VOCAB_FILE=${DATASET_PREFIX}/gpt2-vocab.json
export GPT_VOCAB_FILE=${DATASET_PREFIX}/vocab.json
export BERT_VOCAB_FILE=${DATASET_PREFIX}/bert-large-uncased-vocab.txt
#export MERGE_FILE=${DATASET_PREFIX}/gpt2-merges.txt
export MERGE_FILE=${DATASET_PREFIX}/merges.txt
export DATA_PATH=${DATASET_PREFIX}/my-bert_text_sentence

export cluster_name=nico