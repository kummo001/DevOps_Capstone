#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=kummozz/kummo-flask-app:1.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run kummo-flask-app --image=$dockerpath --port=80 --labels app=kummo-flask-app

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward kummo-flask-app 8000:80

