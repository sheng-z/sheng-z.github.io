#!/bin/sh

set -e

bundle exec jekyll build
chmod -R 755 _site
cp -r _site/* ../github-site/
pushd ../github-site
git add *
git commit -m "Update."
git push -u origin master
popd
