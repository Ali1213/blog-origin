#!/bin/bash

BLOG="../Ali1213.github.io";

for i in `ls $BLOG`
do
    `rm -rf $BLOG/$i`;
done

hexo generate &&    /

git add . && /

git commit -a -m "auto commit by ali at `date +%Y%m%d`" && /

git push origin master && /

mv -f public/* $BLOG && /

cd  $BLOG && /

git add . && /

git commit -a -m "auto commit by ali at `date +%Y%m%d`" && /

git push origin master