#!/bin/bash

set -e

pwd=$PWD
mkdocs_build=$pwd/build

cp mkdocs.yml $mkdocs_build
cp -R $pwd/src/assets/* $mkdocs_build/docs/assets
cp -R $pwd/src/index.md $mkdocs_build/docs

cd $mkdocs_build
mkdocs build
