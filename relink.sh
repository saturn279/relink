#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <base_directory>"
    exit 1
fi

base_directory="$1"

find "$base_directory" -type l -exec sh -c '
    link="$1"
    target=$(readlink -f "$link")
    rel_target=$(realpath --relative-to=$(dirname "$link") "$target")
    rm "$link" && ln -s "$rel_target" "$link"
' sh {} \;
