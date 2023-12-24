#!/bin/bash
# 📍📍Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image (karsajob-ui) 
docker build -t ghcr.io/hario86/karsajobs-ui:latest .

# 📍Login ke Github Packages
echo $CR_PAT | docker login ghcr.io -u hario86 --password-stdin

# Mengunggah image ke Github Packages
docker push ghcr.io/hario86/karsajobs-ui:latest