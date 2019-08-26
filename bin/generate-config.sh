#!/bin/bash

set -e

pwd=$PWD

mkdir -p tmp
cd tmp
if [ ! -d renovate ]; then
    git clone --depth=1 https://github.com/renovatebot/renovate
    cd renovate
else
    cd renovate
    git pull --depth=1
fi
npm install
cd $pwd
node bin/generate-config.js
