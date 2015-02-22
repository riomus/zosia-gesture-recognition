#!/bin/bash

git push --force origin :gh-pages 
git checkout -b gh-pages
git add ./**
git add  ./.**
git commit -m '[ci skip] GH-Pages release'
git push origin gh-pages --force
git checkout master