#!/bin/bash
git config --global user.email "riomus@gmail.com"
git config --global user.name "Travis-CI"
cat $GH_TOKEN > deploy_key.pem
chmod 600 deploy_key.pem
ssh-add deploy_key.pem
git remote set-url --push origin https://github.com/riomus/zosia-gesture-recognition.git

git push origin --delete gh-pages --force
git checkout -b gh-pages

git add **
git commit -m '[ci skip] GH-Pages release'
git push origin gh-pages --force
git checkout master