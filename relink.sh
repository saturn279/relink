#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <base_directory>"
    exit 1
fi

base_directory="$1"

if [ ! -d "$base_directory" ]; then
    echo "Error: Directory '$base_directory' does not exist."
    exit 1
fi


find "$base_directory" -type l -print0 | while IFS= read -r -d '' link; do
    target=$(readlink -f "$link")
    
    if [ -z "$target" ]; then
        echo "Warning: Could not resolve target for symlink '$link'. Skipping..."
        continue
    fi

    rel_target=$(realpath --relative-to="$(dirname "$link")" "$target")

    if ln -sf "$rel_target" "$link"; then
        echo "Updated: $link -> $rel_target"
    else
        echo "Error: Failed to update symlink '$link'"
    fi
done
