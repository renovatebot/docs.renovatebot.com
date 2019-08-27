#!/bin/bash

set -e

pwd=$PWD

mkdocs_build=$pwd/build
rm -rf $mkdocs_build
mkdir -p $mkdocs_build/docs

tmp=$pwd/tmp
rm -rf $tmp
mkdir -p $tmp

cd $tmp
git clone --depth=1 https://github.com/renovatebot/renovate
cd renovate
npm i -g yarn
yarn install --ignore-optional
yarn build
cp -R website/docs/* $mkdocs_build/docs

cd $tmp
git clone --depth=1 https://github.com/renovatebot/pro
cd pro
mkdir $mkdocs_build/docs/pro
cp -R docs/* $mkdocs_build/docs/pro
rm $mkdocs_build/docs/pro/README.md

cd $tmp
git clone --depth=1 https://github.com/renovatebot/renovate-config