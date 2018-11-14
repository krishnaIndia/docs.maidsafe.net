#!/usr/bin/env bash
rm -rf dist
repos=("safe_app_nodejs" "Whitepapers", "safe_app_csharp")
for i in "${repos[@]}"; do
  target="dist/$i"
  git clone --depth 1 --branch gh-pages https://github.com/maidsafe/$i $target
done
cp _redirects dist
rm -rf repos
