#!/bin/bash

export TENSOR_PARALLEL_SIZE=1
export PIPELINE_PARALLEL_SIZE=2
export DATA_PARALLEL_SIZE=8
export EXPERT_EP_SIZE=2
export EXPERT_DP_SIZE=1
export GLOBAL_BATCH_SIZE=256
export MICRO_BATCH_SIZE=2
export FMOE_FASTER_SCHEDULE_ENABLE=OFF
export FMOE_FASTER_GROUP_SIZE=none
export FMOE_FASTER_SHADOW_ENABLE=OFF
export DYNAMIC_ENABLE=ON
export DYNAMIC_FREQ=10
export ITERATION=100

export TRAIN_SAMPLES=$(( $GLOBAL_BATCH_SIZE * $ITERATION))

export parallel_name=t$TENSOR_PARALLEL_SIZE\_p$PIPELINE_PARALLEL_SIZE\_d$DATA_PARALLEL_SIZE\_ep${EXPERT_EP_SIZE}\_dp${EXPERT_DP_SIZE}\_gbs$GLOBAL_BATCH_SIZE\_mbs$MICRO_BATCH_SIZE\_smart\_${FMOE_FASTER_SCHEDULE_ENABLE}\_smartGP${FMOE_FASTER_GROUP_SIZE}\_shadow${FMOE_FASTER_SHADOW_ENABLE}\_dynamic${DYNAMIC_ENABLE}\_freq${DYNAMIC_FREQ}\_iter${ITERATION}