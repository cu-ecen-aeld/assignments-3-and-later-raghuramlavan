if [ -n "$2" ];
then
    if [ -d "$1" ];
    then
    cd "$1"
    fileCount=$(ls|wc -l)
    wordCount=$(grep -R "$2"|wc -l)
    echo "The number of files are $fileCount and the number of matching lines are $wordCount"
    else
    echo "Folder does not exits"
    exit 1
    fi
else
echo "Folder name and search strings not given"
exit 1
fi