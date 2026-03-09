#!/bin/bash
set -e

# Build image order-service dari Dockerfile
docker build -t ghcr.io/$GHCR_USER/order-service:latest .

# Login ke GitHub Container Registry
echo "$GHCR_TOKEN" | docker login ghcr.io -u "$GHCR_USER" --password-stdin

# Push image order-service ke GitHub Container Registry
docker push ghcr.io/$GHCR_USER/order-service:latest
