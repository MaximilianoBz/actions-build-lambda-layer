#!/bin/bash

set -e

ls -1 | grep "_layer" > layer_folder_list.txt

# For each layer folder in file layer_folder_list.txt
for LAMBDA_LAYER_FOLDER in $(cat layer_folder_list.txt); do
    echo "Building layer: $LAMBDA_LAYER_FOLDER"
    pip install --no-cache-dir -r $LAMBDA_LAYER_FOLDER/requirements.txt -t $LAMBDA_LAYER_FOLDER/python/lib/python3.9/site-packages/
done
