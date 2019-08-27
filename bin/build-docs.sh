#!/bin/bash

set -e

pwd=$PWD
mkdocs_build=$pwd/bin/mkdocs_build
mkdir -p $mkdocs_build
cp mkdocs.yml $mkdocs_build
cd $mkdocs_build
if [ ! -d docs ]; then
	source $pwd/bin/get-docs.sh
fi

cd $mkdocs_build
cp -R $pwd/src/assets/* $mkdocs_build/docs/assets
cp -R $pwd/src/index.md $mkdocs_build/docs
ls -l $mkdocs_build/docs
mkdocs build
rm -rf $pwd/docs/*

if [ ! -d $pwd/docs ]; then
	mkdir $pwd/docs
fi

mv ./site/* $pwd/docs

rm -rf $mkdocs_build/site
rm -rf $mkdocs_build/docs
