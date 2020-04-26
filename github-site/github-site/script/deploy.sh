#!/bin/sh

set -e

bundle exec jekyll build
chmod -R 755 _site
scp -r _site s.zhang@gradx.cs.jhu.edu:~/exp_site
