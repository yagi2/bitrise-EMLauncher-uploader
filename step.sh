#!/bin/bash

echo "base_url  : ${base_url}"
echo "api_key   : ${api_key}"
echo "file_path : ${file_path}"
echo "title     : ${title}"
echo "tags      : ${tags}"

curl ${base_url}/api/upload \
    -F api_key=${api_key} \
    -F file=@${file_path} \
    -F title=${title} \
    -F tags=${tags} \
    -F "$(printf "description=%s" "$(date)")"