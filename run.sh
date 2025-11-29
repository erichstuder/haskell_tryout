#!/bin/bash

if [[ "$1" == "-v" ]]; then
    VERBOSE=""
else
    VERBOSE="-v0"
fi

mkdir -p build
ghc app.hs $VERBOSE -outputdir build -o build/app
