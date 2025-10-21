#!/usr/bin/env bash
set -eux

# Install Linux dependencies
apt-get update && apt-get install -y poppler-utils libgl1 libglib2.0-0

# Upgrade pip and install Python dependencies
pip install --upgrade pip setuptools wheel
pip install -r requirements.txt
