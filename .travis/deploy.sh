#!/bin/bash
REPO="git@github.com:ember-learn/emberjs.github.com.git"

COMMIT=`git log -1 --oneline`
git clone $REPO
rsync -a build/* emberjs.github.com
cd emberjs.github.com
git add -A .
git commit --allow-empty -am "$COMMIT"
git push origin master
