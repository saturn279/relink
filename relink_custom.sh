#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Usage: $0 <base_directory> <old_prefix_path> <new_prefix_path>"
    exit 1
fi

base_directory="$1"
old_mount="$2"
new_mount="$3"


find "$base_directory" -type l
find "$base_directory" -type l -exec sh -c '
    link="$1"
    target=$(readlink -f "$link")
    new_target=$(echo "$target" | sed "s|^$2|$3|g")
    rm "$link" && ln -s "$new_target" "$link"
' sh {} $old_mount $new_mount \;


#usage example
#bash relink_custom.sh /tmp/new /tmp/old /tmp/new
