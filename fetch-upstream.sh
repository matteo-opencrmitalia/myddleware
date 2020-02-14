#!/bin/bash
set -e

git add .
git commit -am "stash changes before fetch upstream" && true

#git checkout hotfix
#git pull https://github.com/Myddleware/myddleware.git hotfix
#git push

#git checkout master
#git pull https://github.com/Myddleware/myddleware.git master
#git push

#git checkout contribute
#git pull https://github.com/Myddleware/myddleware.git master
#git push

git remote add upstream https://github.com/Myddleware/myddleware.git
git fetch upstream
git merge upstream/Release-2.5.2
git push
git remote rm upstream

#git checkout develop
