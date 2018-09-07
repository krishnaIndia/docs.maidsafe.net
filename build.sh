#!/usr/bin/env bash

repos=("safe_app_nodejs" "beaker-plugin-safe-app")
mkdir repos
for i in "${repos[@]}"
do
git clone https://github.com/maidsafe/$i.git repos/$i
cd repos/$i
git checkout gh-pages
mkdir -p ../../dist/$i
cp -r * ../../dist/$i
cd ../..
done
mv index.html dist/
rm -rf repos
