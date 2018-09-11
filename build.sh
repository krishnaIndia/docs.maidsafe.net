#!/usr/bin/env bash

repos=("safe_app_nodejs" "beaker-plugin-safe-app" "Whitepapers")
for i in "${repos[@]}"; do
  target="dist/$i"
  git clone --depth 1 --branch gh-pages https://github.com/maidsafe/$i $target
done
cp _redirects dist
