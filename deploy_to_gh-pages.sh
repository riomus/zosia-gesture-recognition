#!/bin/bash
git config --global user.email "riomus@gmail.com"
git config --global user.name "Travis-CI"
git push --force "https://${GH_TOKEN}@github.com/riomus/zosia-gesture-recognition.git" --delete gh-pages 
git checkout -b gh-pages

git add **
git commit -m '[ci skip] GH-Pages release'
git push --force "https://${GH_TOKEN}@github.com/riomus/zosia-gesture-recognition.git}" origin gh-pages --force
git checkout master