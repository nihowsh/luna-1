#!/bin/bash
set -e

echo "Installing system dependencies for Render..."

# Update package lists
apt-get update

# Install ffmpeg and python3-pip
apt-get install -y ffmpeg python3-pip

# Install yt-dlp
pip3 install yt-dlp

# Install Node.js dependencies
npm install

echo "Build complete! All dependencies installed."
