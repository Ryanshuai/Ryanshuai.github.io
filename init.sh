#!/bin/bash

# init.sh - Open index.html in default browser for testing
# Works on Windows (MINGW64) environment

# Get the absolute path to the script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INDEX_FILE="$SCRIPT_DIR/index.html"

# Check if index.html exists
if [ ! -f "$INDEX_FILE" ]; then
    echo "Error: index.html not found in $SCRIPT_DIR"
    exit 1
fi

echo "Opening index.html in default browser..."

# For Windows/MINGW64, use start command
# Convert Unix-style path to Windows-style path for the browser
WINDOWS_PATH=$(cygpath -w "$INDEX_FILE" 2>/dev/null || echo "$INDEX_FILE")

# Use start command (works in MINGW64 bash on Windows)
start "$WINDOWS_PATH"

echo "Browser opened with: $WINDOWS_PATH"
