#!/usr/bin/env bash
pushd src
jekyll build
popd

git checkout master
git ls-files | grep -ve '.gitignore\|CNAME' | xargs rm
cp -r _site/* .
git commit -am "Update site"
git push
git checkout src
