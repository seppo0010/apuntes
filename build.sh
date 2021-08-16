#!/usr/bin/env bash
set -Eeu
find . -name "*.dot" -print0 | while read -d $'\0' f
do
    dot -Tsvg "${f}"  -o "${f/\.dot/.svg}";
done
