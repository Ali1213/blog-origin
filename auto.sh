hexo generate
git add .
git commit -a -m "auto commit by ali at $DATE"
git push origin master
mv -bf public/* ../Ali1213.github.io
cd  ../Ali1213.github.io
git add .
git commit -a -m "auto commit by ali at $DATE
git push origin master