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
# OTHER CODE
if [ $# -ne 2 ]
then 
	echo "Not enough args "
	exit 1
else
	if ! [ -d $1 ]
	then
		echo "Wrong directory" 
	fi
fi 

num_of_files=$(ls $1 | wc -l )
num_of_lines=$(grep -rnw $1 -e $2 | wc -l)

echo "The number of files are ${num_of_files} and the number of matching lines are ${num_of_lines}"
exit 0