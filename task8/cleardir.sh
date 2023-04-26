#!/bin/bash

dir="$1"

if ! [ -d "$dir" ]
        then
                echo "$dir does not exist"
                exit 1
fi

find "$dir" \( -name "*.bak" -o -name "*.tmp" -o -name "*.backup" \) -delete
exit 0