#!/bin/bash

dir="$1"

if ! [ -d $dir ]
        then
                echo "$dir does not exist"
                exit 1
fi

if [ ! -z $dir ]
        then
                cd $dir
fi

shopt -s dotglob
for file in *
    do
        if [ -f $file ]
            then
                user=`ls -l $file | awk {'print $3'}`

                if [ ! -d $user ]
                        then
                                mkdir -p $user
                fi

                cp $file ./$user
                chown $user ./$user/$file
        fi
    done

exit 0
