#!/usr/bin/env bash
pushd src
jekyll build
git checkout master
popd
cp -r _site/* .
git commit -am "Update site"
git push
git checkout src
