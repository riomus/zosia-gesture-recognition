#!/bin/bash

git branch -D gh-pages
git checkout -b gh-pages

git add **
git commit -m '[ci skip] GH-Pages release'
git push origin gh-pages