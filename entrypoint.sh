#!/bin/bash
# docker run -v "$PWD":/var/task "public.ecr.aws/sam/build-python3.9" /bin/sh -c "pip install -r requirements.txt -t python/lib/python3.9/site-packages/; exit"

set -e

if [[ -z "$LAMBDA_LAYER_FOLDER" ]]; then
    echo "Layer Folder"
fi

print $LAMBDA_LAYER_FOLDER

LAMBDA_TASK_ROOT="/github/workspace/auth_layer"

print $LAMBDA_TASK_ROOT

# Build layer
pip install -r requirements.txt -t python/lib/python3.9/site-packages/