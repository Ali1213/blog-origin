#!/bin/bash

hexo generate &&    /

git add . && /

git commit -a -m "auto commit by ali at `date +%Y%m%d`" && /

git push origin master && /

mv -f public/* ../Ali1213.github.io && /

cd  ../Ali1213.github.io && /

git add . && /

git commit -a -m "auto commit by ali at `date +%Y%m%d`" && /

git push origin master