#!/bin/bash

set -e

pwd=$PWD
mkdocs_build=$pwd/bin/mkdocs_build
cd $mkdocs_build
if [ ! -d docs ]; then
	source $pwd/bin/get-docs.sh
fi

cd $mkdocs_build
cp -R $mkdocs_build/build_dep/assets/* $mkdocs_build/docs/assets
cp -R $mkdocs_build/build_dep/index.md $mkdocs_build/docs
ls -l $mkdocs_build/docs
mkdocs build
rm -rf $pwd/docs/*

if [ ! -d $pwd/docs ]; then
	mkdir $pwd/docs
fi

mv ./site/* $pwd/docs

rm -rf $mkdocs_build/site
rm -rf $mkdocs_build/docs
