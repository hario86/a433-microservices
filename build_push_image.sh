#!/bin/bash
# 📍Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .

# 📍Melihat daftar image di lokal.
docker images

# 📍Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/hario86/item-app:v1

# 📍Login ke Github Packages
echo $PAT | docker login ghcr.io --username hario86 --password-stdin

#Mengunggah image ke Github Packages
docker push ghcr.io/hario86/item-app:v1
