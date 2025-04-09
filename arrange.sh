#!/bin/bash

alphabets=(a b c d e f g h i j k l m n o p q r s t u v w x y z)

for file in files/*; do
    filename=$file
    filename=${filename#files/}
    for alphabet in ${alphabets[@]}; do
        if [[ $filename == $alphabet* ]] || [[ $filename == ${alphabet^}* ]]; then
            mv $file $alphabet/
            break
        fi
    done
done