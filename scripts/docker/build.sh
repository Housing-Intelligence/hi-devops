#!/usr/bin/env bash
set -euo pipefail
IMAGE_TAG="${1:-my-image:latest}"
docker build -t "$IMAGE_TAG" .
echo "Built $IMAGE_TAG"
