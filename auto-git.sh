time=$(date)
echo $time
n=1
echo "============================Auto Git============================"
echo "|| This script is now monitoring this current directory       ||"
echo "|| Enter the update interval between each push (Eg. 1 = 1 min)||"
echo "================================================================"
echo "==================="
read -p "Interval Time: " inter
echo "==================="
while :

do 
    if [ -d .git ]; then
        echo "==================================="
        echo "||This is the current Repo Status||"
        echo "==================================="
        echo git status
        git add .;
        git commit -m "This commit is made by Auto-Git. Commit-$n, $time"
        git push
        echo "Commit $n Made"
        n=$(($n + 1));
    else
        echo "Fatal! This is Not a Git Repo"
        git rev-parse --git-dir 2> /dev/null;
        exit 1;
    fi;
    d=$(($inter * 60));
    sleep $d;
done