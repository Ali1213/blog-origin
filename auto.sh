hexo generate

if [ $? -ne 0 ]
then
    echo "failed hexo generate"
    echo $?
    exit
fi

git add .

if [ $? -ne 0 ]
then
    echo "failed to git add ."
    echo $?
    exit
fi

git commit -a -m "auto commit by ali at `date +%Y%m%d`"

if [ $? -ne 0 ]
then
    echo "failed to git commit "
    echo $?
    exit
fi

git push origin master


if [ $? -ne 0 ]
then
    echo "failed to git push "
    echo $?
    exit
fi

mv -f public/* ../Ali1213.github.io


if [ $? -ne 0 ]
then
    echo "failed to mv "
    echo $?
    exit
fi


cd  ../Ali1213.github.io


if [ $? -ne 0 ]
then
    echo "failed to cd  "
    echo $?
    exit
fi


git add .


if [ $? -ne 0 ]
then
    echo "failed to git add "
    echo $?
    exit
fi

git commit -a -m "auto commit by ali at `date +%Y%m%d`"


if [ $? -ne 0 ]
then
    echo "failed to git commit "
    echo $?
    exit
fi

git push origin master

if [ $? -ne 0 ]
then
    echo "failed to 
git push  "
    echo $?
    exit
fi
