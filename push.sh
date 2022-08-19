#!/usr/bin/env bash

RNDM=`shuf -n 1 -i 10000-99999`
cat default.yml | sed s/RNDM/$RNDM/g > .github/workflows/main.yml
git add .
git commit -m update
git push
