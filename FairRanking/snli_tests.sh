#!/bin/bash

echo 'Starting tests...'

export PYTHONPATH="$PWD"

cd $PYTHONPATH/Transparency

#NLI
python3 train_and_run_experiments_qa.py --dataset snli --data_dir . --output_dir outputs/ --attention all --encoder lstm
python3 train_and_run_experiments_qa.py --dataset snli --data_dir . --output_dir outputs/ --attention none --encoder lstm

echo 'Done!'