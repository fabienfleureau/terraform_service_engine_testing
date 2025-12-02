#!/bin/sh
set -e

# Install cowsay and fortune, generate output, then cleanup to minimize image size
apk add --no-cache fortune cowsay
rm -rf /var/cache/apk/*
