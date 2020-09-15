
n=1
echo $n
echo "Auto Git"
echo "This script is now monitoring this current directory"
echo "Enter the update interval between each push (Eg. 1 = 1 min)"
read -p "Interval Time: " inter
while :

do 
    if [ -d .git ]; then
        echo $n  
        echo "This is the current Repo Status"
        git status
        git add .;
        git commit -m "This commit is made by Auto-Git $n"
        git push
        echo "Commit $n Made"
        $N=$(("$N" + 1));
    else
        echo "Fatal! This is Not a Git Repo"
        git rev-parse --git-dir 2> /dev/null;
    fi;
    d=$(($inter * 60));
    sleep $d;
done