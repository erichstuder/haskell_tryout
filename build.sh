#!/bin/bash

if [[ "$1" == "-v" ]]; then
    VERBOSE=""
else
    VERBOSE="-v0"
fi

cabal test
cabal build
mkdir -p build
cp $(cabal list-bin exe:app) build/app
