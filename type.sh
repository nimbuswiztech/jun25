#!/bin/bash

echo "enter the name"
read name

if [ -L "$name" ]; then
    echo "$name is a symbolic link"
elif [ -f "$name" ]; then
    echo "$name is a regular file"
elif [ -d "$name" ]; then
    echo "$name is a directory"
else
    echo "$name is not a regular file, directory, or symbolic link"
fi