#!/bin/bash

# Detect the OS
os="$(uname)"

# Detect the architecture
arch="$(uname -m)"

# Choose the right binary URL based on the OS and architecture
url="https://github.com/kubeefficient/analyzer-quick-start/releases/download/v0.1.0/resources-analyzer-${os}-${arch}"


if ! curl -fsSL "$url" -o resources_analyzer; then
    echo "Failed to download resources_analyzer"
    exit 1
fi

chmod +x ./resources_analyzer
    
# Execute the binary if '--run' argument is present
if [[ "$1" == "--run" ]]; then
    ./resources_analyzer
fi
