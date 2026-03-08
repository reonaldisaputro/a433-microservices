#!/bin/bash
set -e

# Build image frontend dari Dockerfile dengan nama karsajobs-ui:latest
docker build -t ghcr.io/$GHCR_USER/karsajobs-ui:latest .

# Login ke GitHub Container Registry
echo "$GHCR_TOKEN" | docker login ghcr.io -u "$GHCR_USER" --password-stdin

# Push image frontend ke GitHub Container Registry
docker push ghcr.io/$GHCR_USER/karsajobs-ui:latest
