#!/bin/bash

# in dev mode
if [ -f ../scripts/encrypt-github-token-for-travis.sh ]
then
  ../scripts/encrypt-github-token-for-travis.sh $@
else
  # as installed npm package, located inside 'node_modules/push2gh-pages'
  if [ -f ../push2gh-pages/scripts/encrypt-github-token-for-travis.sh ]
  then
    ../push2gh-pages/scripts/encrypt-github-token-for-travis.sh $@
  fi
fi
