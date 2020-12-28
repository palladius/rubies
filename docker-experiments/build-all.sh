#!/bin/bash

VER=1.2
echo "$0 ver$VER. Starting.."

for F in Dockerfile.* ; do 
    SUFFIX=$(echo $F | cut -d. -f 2 )
    if [ -f  ".$F.ok" ]; then
        verde "Image $F already exists. Skipping"
    else
    white "== Processing: $F =="
    #| tee ".$F.log"
    #| tee ".$F.log" If you add this, won't catch the exit <> 0. and everything will be OK.
    docker build -t riccruby:$SUFFIX -f Dockerfile.$SUFFIX .  &&
        touch ".$F.ok" ||
            touch ".$F.nope"
    fi
done