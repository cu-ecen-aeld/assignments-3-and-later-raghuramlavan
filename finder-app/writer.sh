if [ -n "$2" ];
then
dir=$(dirname "$1")
    if [ -d "$dir" ];
    then
    echo "$2">"$1"
    else
    mkdir -p $(dirname "$1") && echo "$2">"$1"
    fi
else
echo "file could not be created"
exit 1
fi