#!/bin/sh

set -eu

ROOT_DIR=$(CDPATH= cd -- "$(dirname "$0")/.." && pwd)
DOCS_DIR="$ROOT_DIR/docs"

mkdir -p "$DOCS_DIR"

rm -rf "$DOCS_DIR/figs" "$DOCS_DIR/static"
cp "$ROOT_DIR/index.html" "$DOCS_DIR/index.html"
cp -R "$ROOT_DIR/figs" "$DOCS_DIR/figs"
cp -R "$ROOT_DIR/static" "$DOCS_DIR/static"
find "$DOCS_DIR" -name '.DS_Store' -delete
touch "$DOCS_DIR/.nojekyll"
