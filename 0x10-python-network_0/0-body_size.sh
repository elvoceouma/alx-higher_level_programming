#!/bin/bash

# Check if URL is provided as argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send request to the provided URL using curl
response=$(curl -s -o /dev/null -w "%{size_download}" "$1")

# Display the size of the body of the response in bytes
echo "Size of the response body: $response bytes"

