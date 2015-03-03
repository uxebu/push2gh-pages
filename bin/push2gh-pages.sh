#!/bin/bash

# in dev mode
if [ -f ../scripts/push-to-ghpages.sh ]
then
  ../scripts/push-to-ghpages.sh $@
else
  # as installed npm package, located inside 'node_modules/push2gh-pages'
  if [ -f ../push2gh-pages/scripts/push-to-ghpages.sh ]
  then
    ../push2gh-pages/scripts/push-to-ghpages.sh $@
  fi
fi
