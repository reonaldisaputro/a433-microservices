#!/bin/bash
set -e

# Build image backend dari Dockerfile dengan nama karsajobs:latest
docker build -t ghcr.io/$GHCR_USER/karsajobs:latest .

# Login ke GitHub Container Registry
echo "$GHCR_TOKEN" | docker login ghcr.io -u "$GHCR_USER" --password-stdin

# Push image backend ke GitHub Container Registry
docker push ghcr.io/$GHCR_USER/karsajobs:latest
