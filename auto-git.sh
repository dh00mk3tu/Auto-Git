RED='\033[1;31m'
GREEN='\033[1;32m'
NOCOLOR='\033[0m'


echo "Auto Git"
echo "This script is now monitoring this current directory"
echo "Enter the update interval between each push (Eg. 1 = 1 min)"
read -p "Interval Time: " inter
while :

do 
    if [ -d .git ]; then
        GREEN='\033[1;32m'
        $n = 1
        echo "${GREEN}This is the current Repo Status"
        git status
        git add .;
        git commit -m "This commit is made by Auto-Git, Commit Number $n"
        git push
        echo "Made "
    else
        echo "${RED}Fatal! This is Not a Git Repo"
        git rev-parse --git-dir 2> /dev/null;
    fi;
    d=$(($inter * 60));
    sleep $d;
done