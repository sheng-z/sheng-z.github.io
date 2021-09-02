#!/bin/bash

set -e

bundle exec jekyll build
chmod -R 755 _site
cp -r _site/* ../sheng-z.github.io/
pushd ../sheng-z.github.io
git add *
git commit -m "Update."
git push -u origin master
popd
