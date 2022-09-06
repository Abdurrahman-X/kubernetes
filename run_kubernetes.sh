#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="abdurrahmanx/abdurrahmanx399"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run abdurrahmanx399 \
    --image=$dockerpath \
    --port=80 --labels app=abdurrahmanx399


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward abdurrahmanx399 8000:80
