#!/usr/bin/env bash

# Script for generate pygmentize_types.txt file
echo 'text .txt' > pygmentize_types.txt
pygmentize -L lexers | \
    tail -n +5 |\
    sed -n 'N;s/\n//p' |\
    sed -E -n 's/\* ([^,:]+).*filenames[^*]+\*(\.[^,)]+).*/\1 \2/p' |\
    grep -v 'text' >> pygmentize_types.txt
