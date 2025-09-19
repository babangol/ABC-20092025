#!/bin/bash

# Location where folder should be created/deleted
TARGET_DIR="/tmp/myfolder"

# Check if input argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <0|1>"
    exit 1
fi

# Conditional check
if [ "$1" -eq 1 ]; then
    echo "Creating folder and file at $TARGET_DIR..."
    mkdir -p "$TARGET_DIR"
    touch "$TARGET_DIR/myfile.txt"
    echo "Sample content" > "$TARGET_DIR/myfile.txt"
    echo "✅ Folder and file created."
elif [ "$1" -eq 0 ]; then
    echo "Deleting folder(s) at $TARGET_DIR..."
    rm -rf "$TARGET_DIR"
    echo "✅ Folder deleted."
else
    echo "Invalid input! Please enter 0 (delete) or 1 (create)."
    exit 1
fi

