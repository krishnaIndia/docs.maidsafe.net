#!/usr/bin/env bash

repos=("safe_app_nodejs" "beaker-plugin-safe-app")
mkdir repos
for i in "${repos[@]}"; do
  target="repos/$i"
  git clone https://github.com/maidsafe/$i $target
  git -C $target checkout gh-pages
  mkdir -p dist/$i
  rsync -rv --exclude=.git $target dist
done
cp _redirects dist
rm -rf repos
