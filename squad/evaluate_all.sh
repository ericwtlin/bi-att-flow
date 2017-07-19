#!/usr/bin/env bash


EVALUATE_SCRIPT="/data/kf_grp/tlwu/workspace/squad/squad/evaluate-v1.1.py"
DEV_SET_PATH="/data/kf_grp/tlwu/datasets/squad_stanford/dev-v1.1.json "


for k in $(seq 1 9)
do
    ANSWER_PATH="/data/kf_grp/tlwu/workspace/squad/out/basic/00/answerev-00${k}000.json"
    python $EVALUATE_SCRIPT $DEV_SET_PATH $ANSWER_PATH
done


for k in $(seq 10 20)
do
    ANSWER_PATH="/data/kf_grp/tlwu/workspace/squad/out/basic/00/answerev-0${k}000.json"
    python $EVALUATE_SCRIPT $DEV_SET_PATH $ANSWER_PATH
done