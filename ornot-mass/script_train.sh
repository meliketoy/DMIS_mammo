#!/bin/bash
export netType='resnet'
export depth=50
export dataset='dreamChallenge'
export data='../data/split_0.6/'

rm -rf gen/dreamChallenge.t7

th main.lua \
    -dataset ${dataset} \
    -data ${data} \
    -netType ${netType} \
    -nGPU 2 \
    -batchSize 64 \
    -LR 1e-2 \
    -weightDecay 1e-4 \
    -depth ${depth} \
    -resetClassifier true \
    -nClasses 2 \
    -retrain pretrained/resnet-${depth}.t7 \
    -nGPU 1 \
