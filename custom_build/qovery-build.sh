#!/bin/sh
set -ex

echo "=== Qovery Build Script ==="
echo "Starting build at $(date)"

echo ">>> Installing fortune and cowsay packages..."
apk add --no-cache fortune cowsay

echo ">>> Cleaning up apk cache..."
rm -rf /var/cache/apk/*

echo ">>> Verifying installation..."
which fortune
which cowsay

echo "=== Build complete at $(date) ==="
