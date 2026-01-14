#!/usr/bin/env bash
find . -type f -name "*.jemdoc" | while read -r file; do
    if [ -f "$file" ]; then
        python jem/jemdoc.py "$file"
    fi
done