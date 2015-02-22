#!/bin/bash
git push --delete gh-pages --force
git checkout -b gh-pages

git add **
git commit -m '[ci skip] GH-Pages release'
git push origin gh-pages --force
git checkout master