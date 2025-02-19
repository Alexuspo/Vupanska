#!/bin/bash
set -e

# Install Python if needed
if ! command -v python3 &> /dev/null; then
    apt-get update && apt-get install -y python3 python3-pip
fi

# Upgrade pip and install requirements
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

# Build the site
python3 -m mkdocs build
