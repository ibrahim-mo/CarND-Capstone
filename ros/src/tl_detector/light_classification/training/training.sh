#!/usr/bin/env sh

source activate carnd-capstone

python ./models/research/object_detection/train.py --pipeline_config_path=training.config --train_dir=training_results

python ./models/research/object_detection/export_inference_graph.py --pipeline_config_path=training.config --trained_checkpoint_prefix=training_results/model.ckpt-5000 --output_directory=.