#!/bin/bash

if [ $# -lt 2 ]; then
  echo "Usage: `basename $0` repo_slug github_token";
  echo "";
  echo "repo_slug     Is the <github_username>/<repo_name>, e.g. tddbin/tddbin-frontend";
  echo "github_token  go to https://github.com/settings/applications#personal-access-tokens ";
  echo "              to get the token needed and pass it in here.";
  echo "";
  exit 1;
fi

travis-encrypt -r $1 GH_TOKEN=$2
