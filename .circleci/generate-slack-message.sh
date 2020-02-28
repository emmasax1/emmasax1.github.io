#!/bin/bash
if [ -z $CIRCLE_PULL_REQUESTS ]; then
  m="Build #$CIRCLE_BUILD_NUM of $CIRCLE_PROJECT_USERNAME/$CIRCLE_PROJECT_REPONAME@$CIRCLE_BRANCH by $CIRCLE_USERNAME"
else
  m="Build #$CIRCLE_BUILD_NUM of $CIRCLE_PROJECT_USERNAME/$CIRCLE_PROJECT_REPONAME@$CIRCLE_BRANCH in PR $CIRCLE_PULL_REQUESTS by $CIRCLE_USERNAME"
fi

echo "export SLACK_MESSAGE='$m'" >> $BASH_ENV
source $BASH_ENV
