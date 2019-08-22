#!/bin/bash

set -e

pwd=$PWD

mkdir -p tmp

cd tmp
rm -rf renovate
git clone --depth=1 https://github.com/renovatebot/renovate
cd renovate
rm -rf $pwd/bin/mkdocs_build/docs
mkdir -p $pwd/bin/mkdocs_build/docs
cp -R website/docs/* $pwd/bin/mkdocs_build/docs

cd ../
rm -rf pro
git clone --depth=1 https://github.com/renovatebot/pro
cd pro
mkdir $pwd/bin/mkdocs_build/docs/pro
cp -R docs/* $pwd/bin/mkdocs_build/docs/pro
rm $pwd/bin/mkdocs_build/docs/pro/README.md
