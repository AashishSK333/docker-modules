#!/usr/bin/env bash

# 1) Setting up the environment
echo "Starting deployment"
aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 047719625934.dkr.ecr.ap-southeast-1.amazonaws.com

# 2) Creating & uploading the image
docker build -t 047719625934.dkr.ecr.ap-southeast-1.amazonaws.com/study-docker/nodea-app:latest .  
docker push 047719625934.dkr.ecr.ap-southeast-1.amazonaws.com/study-docker/nodea-app:latest

# 3) Cleanup
docker image 047719625934.dkr.ecr.ap-southeast-1.amazonaws.com/study-docker/nodea-app:latest