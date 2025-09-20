#!/bin/sh

echo "Checking applications installation..."

for app in git terraform ansible docker; do
    if command -v "$app" >/dev/null 2>&1; then
        version=$($app --version 2>&1 | head -n 1)
        echo "[OK] $app is installed → $version"
    else
        echo "[MISSING] $app is not installed!"
    fi
done
