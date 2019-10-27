#!/bin/bash
find . -name *.dll | while read line; do
path=$(echo $line | rev | cut -d / -f2- | rev | cut -c 3-)
file=$(echo $line | rev | cut -d / -f1  | rev)
ilspycmd $path/$file > $path/${file}_decomp.txt
done