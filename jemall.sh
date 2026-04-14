#!/usr/bin/env bash
set -e

ROOT="$(cd "$(dirname "$0")" && pwd)"
DOCS="$ROOT/docs"

# Clean and recreate docs/
rm -rf "$DOCS"
mkdir -p "$DOCS"

# Compile all .jemdoc files, outputting HTML into docs/
find "$ROOT" -type f -name "*.jemdoc" | while read -r file; do
    base=$(basename "$file" .jemdoc)
    python3 "$ROOT/jem/jemdoc.py" -o "$DOCS/${base}.html" "$file"
done

# Copy static assets into docs/
cp "$ROOT/jemdoc.css" "$DOCS/"
cp "$ROOT/FullCV.pdf" "$DOCS/"
cp -r "$ROOT/images" "$DOCS/"
cp -r "$ROOT/blogs" "$DOCS/"
cp -r "$ROOT/projects" "$DOCS/"
cp -r "$ROOT/evaluations" "$DOCS/"
cp -r "$ROOT/resources" "$DOCS/"

# Remove .jemdoc files that got copied with blogs/
find "$DOCS/blogs" -name "*.jemdoc" -delete

echo "Build complete: $(ls "$DOCS"/*.html | wc -l | tr -d ' ') HTML files in docs/"
