#! /usr/bin/env bash

set -e

# requires `pandoc` and `calibre`
pandoc \
  --output=C3-Readme.html \
  --standalone \
  --toc \
  --metadata=title:"C3 Readme" \
  --metadata=author:"Christopher Curl" \
  README.md
pandoc \
  --output=C3-Editor.html \
  --standalone \
  --toc \
  --metadata=title:"C3 Editor" \
  --metadata=author:"Christopher Curl" \
  README.md
ebook-convert C3-Readme.html C3-Readme.epub
ebook-convert C3-Editor.html C3-Editor.epub
