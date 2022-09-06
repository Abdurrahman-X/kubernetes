#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="abdurrahmanx/abdurrahmanx399"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag abdurrahmanx399 ${dockerpath}:latest
# echo "Docker ID and Image: $dockerpath

# Step 3:
# Push image to a docker repository
docker push ${dockerpath}:latest