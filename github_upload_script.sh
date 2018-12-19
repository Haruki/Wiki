#!/bin/zsh
cd /data/TiddlyServer-2.0.14-fixed
if ! git diff-index --quiet HEAD --; then
  git add .
  wikiSize="$(stat --printf='%s' wiki/wiki.html)"
  git commit -m "update $wikiSize"
  git push
fi
Wiki 2121283 ArchWiki 2091645 Programming 2088429
