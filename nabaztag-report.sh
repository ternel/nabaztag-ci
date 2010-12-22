#!/bin/bash
# TODO : Find a way to deal with hudson auth
# At the moment, deal with a fake RSS : ./nabaztag-report.sh https://github.com/ternel/nabaztag-ci/raw/master/hudson.xml

RED='255,0,0'
GREEN='0,255,0'
YELLOW='255,255,0'

helpmessage()
{
  echo "Use your Nabaztag(:tag) for Hudson reporting."
  echo "Usage : ./nabaztag-report.sh http://RSStoTheLastBuilds"
  echo ""
  echo "LEDs are the three last builds color"
}

if [ -z $1 ]; then
  helpmessage
  exit 111
fi


curl --silent "$1" | grep -E '(title>)' | \
  sed -n '2,$p'

exit 0



