#!/bin/bash

set -e

# get the correct file
if [ $(uname -m) == "x86_64" ]; then
  echo "Downloading julia for x86_64"
  wget -O julia-1.9.2.tar.gz https://julialang-s3.julialang.org/bin/linux/x64/1.9/julia-1.9.2-linux-x86_64.tar.gz
elif [ $(uname -m) == "aarch64" ]; then
  echo "Downloading julua for aarch64"
  wget -O julia-1.9.2.tar.gz https://julialang-s3.julialang.org/bin/linux/aarch64/1.9/julia-1.9.2-linux-aarch64.tar.gz
else 
  echo "ERROR, platform not recognised"
  exit 1
fi

# extract it
echo "DONE DOWNLOADING, EXTRACTING!"
tar zxvf julia-1.9.2.tar.gz
