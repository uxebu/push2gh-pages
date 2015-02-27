#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Usage: `basename $0` admin_email build_dir";
  echo "";
  echo "admin_email   The email address that will be used to passed to git-config";
  echo "build_dir     The directory where the built files that shall be pushed into";
  echo "              the gh-pages branch are located (relative to the project's root).";
  echo "";
  exit 1;
fi

ADMIN_EMAIL=$1

BUILD_DIR=$2
TEMP_DIR=__t_m_p__/origin-gh-pages
(
  set -e
  
  echo "push2ghpages: checking out 'gh-pages' branch";
  git clone --branch=gh-pages "https://${GH_TOKEN}@${GH_REF}" $TEMP_DIR

  rm -rf $TEMP_DIR/*
  mkdir -p $TEMP_DIR
  cp -r $BUILD_DIR/* $TEMP_DIR
  cd $TEMP_DIR

  echo "push2ghpages: configuring git user+email"
  git config user.name "Travis-CI"
  git config user.email "$ADMIN_EMAIL"

  echo "push2ghpages: adding files"
  # `--all` ensures that only the files from the last build end in the repo
  git add --all .

  echo "push2ghpages: committing"
  git commit -m "Travis deployed 'master' - `date`"

  echo "push2ghpages: push back to gh-pages"
#  git push "https://${GH_TOKEN}@${GH_REF}" gh-pages:gh-pages
)
