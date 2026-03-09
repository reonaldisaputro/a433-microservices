#!/bin/bash
set -e

# Build image shipping-service dari Dockerfile
docker build -t ghcr.io/$GHCR_USER/shipping-service:latest .

# Login ke GitHub Container Registry
echo "$GHCR_TOKEN" | docker login ghcr.io -u "$GHCR_USER" --password-stdin

# Push image shipping-service ke GitHub Container Registry
docker push ghcr.io/$GHCR_USER/shipping-service:latest
