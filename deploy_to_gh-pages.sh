#!/bin/bash
git push --force "https:/github.com/riomus/zosia-gesture-recognition.git" --delete gh-pages 
git checkout -b gh-pages

git add **
git commit -m '[ci skip] GH-Pages release'
git push --force "https://github.com/riomus/zosia-gesture-recognition.git}" origin gh-pages --force
git checkout master