#!/bin/bash

src_files=(*.c)

for src_file in "${src_files[@]}"; do
    obj_file="${src_file%.c}.o"

    if [ "$src_file" -nt "$obj_file" ] || [ ! -e "$obj_file" ]; then
        gcc -c "$src_file"
    fi
done

obj_files=(*.o)

gcc -o main "${obj_files[@]}"

echo "Build complete."
