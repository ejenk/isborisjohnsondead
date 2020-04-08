#!/bin/bash

while true
do
  ./boris.sh >index.html
  git diff --exit-code
  retVal=$?
  if [ $retVal -eq 1 ]; then
    git add *
    git commit -am "hi"
    git push -u origin gh-pages
  fi
  sleep 5
done
