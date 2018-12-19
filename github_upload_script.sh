#!/bin/zsh
cd /data/TiddlyServer-2.0.14-fixed
if ! git diff-index --quiet HEAD --; then
  git add .
  wikiSize="Wiki $(stat --printf='%s' wiki/wiki.html) ArchWiki $(stat --printf='%s' wiki/ArchWiki.html) Programming $(stat --printf='%s' wiki/Programming.html)"
  git commit -m "update $wikiSize"
  git push
fi
