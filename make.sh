#!/bin/bash
echo "Making Sym Link..."
source makesymlinks.sh 

echo "Making Brewfile from installed brew packages"
source brew.sh MAKE_BREWFILE
