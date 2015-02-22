#!/bin/bash
git push --force "https://${GH_TOKEN}@${GH_REF}" --delete gh-pages 
git checkout -b gh-pages

git add **
git commit -m '[ci skip] GH-Pages release'
git push --force "https://${GH_TOKEN}@${GH_REF}" origin gh-pages --force
git checkout master