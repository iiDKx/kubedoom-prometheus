#!/bin/sh

# Install Kind
if ! command -v kind &> /dev/null
then
    echo "Installing Kind..."
    curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.17.0/kind-linux-amd64
    chmod +x ./kind
    sudo mv ./kind /usr/local/bin/kind
else
    echo "Kind was found! Skipping..."
fi
