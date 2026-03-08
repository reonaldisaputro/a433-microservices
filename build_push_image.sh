#!/bin/bash
set -e

# 1. Build image dari Dockerfile dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# 2. Melihat daftar image yang tersedia di lokal
docker images

# 3. Mengubah nama image agar sesuai format GitHub Container Registry
docker tag item-app:v1 ghcr.io/reonaldisaputro/item-app:v1

# 4. Login ke GitHub Container Registry menggunakan environment variable
echo "$GHCR_TOKEN" | docker login ghcr.io -u "$GHCR_USER" --password-stdin

# 5. Mengunggah image ke GitHub Container Registry milik reonaldisaputro
docker push ghcr.io/reonaldisaputro/item-app:v1
