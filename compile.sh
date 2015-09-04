#!/bin/bash
files=$(find . -name 'demo*.s?ss')
for file in $files; do
    cssName="${file%.*}.css";
    sass --force --style compressed $file:$cssName
done
