#!/bin/bash

# Ensure the build/docs directory does not already exist
rm -rf build/documents

# Create the docs directory inside build
mkdir -p build/documents

# Move all contents of build to build/docs
shopt -s dotglob  # Include hidden files and directories
mv build/* build/documents/
shopt -u dotglob  # Disable the dotglob option
