#!/bin/bash
upload-s3() {
    local file_path="$1"
    local bucket="$2"
    local key="$3"

    if [ -f "$file_path" ]; then
        echo "File exists and is a regular file"
        # echo "s3 cp "$file_path" "s3://$bucket/$key""
        aws s3 cp "$file_path" "s3://$bucket/$key" 
    else
        echo "File does not exist or is not a regular file"
    fi


}

upload-s3 "$1" "$2" "$3"