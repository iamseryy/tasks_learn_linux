#!/bin/bash

dir="$1"

if ! [ -d "$dir" ]
        then
                echo "$dir does not exist"
                exit 1
fi

find "$dir" \( -type f -name "*.bak" -o -type f -name "*.tmp" -o -type f -name "*.backup" \) -delete
exit 0