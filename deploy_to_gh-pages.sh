#!/bin/bash
git push "https:/github.com/riomus/zosia-gesture-recognition.git" --delete gh-pages --force
git checkout -b gh-pages

git add **
git commit -m '[ci skip] GH-Pages release'
git push "https://github.com/riomus/zosia-gesture-recognition.git" origin gh-pages --force
git checkout master