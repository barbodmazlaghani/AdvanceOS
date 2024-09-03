#!/bin/bash

src_files=("ls.c" "cat.c" "wc.c")

for src_file in "${src_files[@]}"; do
    exe_file="${src_file%.c}"
    gcc -o "$exe_file" "$src_file"
done

echo "Build complete."

