#!/bin/sh
export GPU_MAX_ALLOC_PERCENT=100
export GPU_FORCE_64BIT_PTR=0 
export GPU_MAX_HEAP_SIZE=100 
export GPU_USE_SYNC_OBJECTS=1 
export GPU_SINGLE_ALLOC_PERCENT=100

export POOL_REWARD_ADDRESS="0xdf78c092bffc34D39812f5f24Ea158F777980518"
export POOL_MINING_ADDRESS="eth-us-east1.nanopool.org:9999"

./ethdcrminer64 -epool $POOL_MINING_ADDRESS \
                -ewal $POOL_REWARD_ADDRESS/Miner01 \
                -epsw x \
                -mode 1 \
                -tt 70 \
                -fanmin 100 \
                -cclock 1150 \
                -mclock 2250 \
                -etha 2 \
                -r 0 \
                -ttstop 85
