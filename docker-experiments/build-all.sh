#!/bin/bash

for F in Dockerfile.* ; do 
    SUFFIX=$(echo $F | cut -d. -f 2 )
    if [ -f  ".$F.ok" ]; then
        verde "Image $F already exists. Skipping"
    else
    white "== Prcoessing $F =="
    docker build -t riccruby:$SUFFIX - < Dockerfile.$SUFFIX &&
        touch ".$F.ok" ||
            touch ".$F.nope"
    fi
done