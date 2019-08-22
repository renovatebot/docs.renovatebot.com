#!/bin/bash

set -e

pwd=$PWD

mkdir -p tmp
cd tmp
rm -rf renovate-config
git clone --depth=1 https://github.com/singapore/renovate-config
cd $pwd
node bin/generate-presets.js
