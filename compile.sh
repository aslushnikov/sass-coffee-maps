#!/bin/bash
files=$(find . -name 'demo*.s?ss')
for file in $files; do
    cssName="${file%.*}.css";
    sass --force --style expanded $file:$cssName
    chmod 755 $cssName
    chmod 755 "$cssName".map
done
