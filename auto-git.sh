echo "Auto Git"
echo "This script is now monitoring this current directory"
echo "Enter the update interval between each push (Eg. 1 = 1 min)"
read -p "Interval Time: " inter
while :

do 
    if [ -d .git ]; then
        echo "Git Repo Found"
        echo "This is the current Repo Status"
        git add .;
        git 
    else
        echo "Not a Git Repo"
        git rev-parse --git-dir 2> /dev/null;
    fi;
    d=$(($inter * 60));
    sleep $d;
done