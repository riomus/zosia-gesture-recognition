#!/bin/bash
git remote set-url --push origin https://github.com/riomus/zosia-gesture-recognition.git

git push origin --delete gh-pages --force
git checkout -b gh-pages

git add **
git commit -m '[ci skip] GH-Pages release'
git push origin gh-pages --force
git checkout master