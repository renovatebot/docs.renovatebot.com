#!/bin/bash

set -e

pwd=$PWD

mkdocs_build=$pwd/build
rm -rf $mkdocs_build
mkdir -p $mkdocs_build

tmp=$pwd/tmp
rm -rf $tmp
mkdir -p $tmp

cd $tmp
git clone --depth=1 https://github.com/renovatebot/renovate
cd renovate
npm i -g yarn
yarn install
yarn build
cp -R website/docs/* $mkdocs_build

cd $tmp
git clone --depth=1 https://github.com/renovatebot/pro
cd pro
mkdir $mkdocs_build/pro
cp -R docs/* $mkdocs_build/pro
rm $mkdocs_build/pro/README.md
