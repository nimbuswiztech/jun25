#!/bin/bash

# Define a function to check the status of a website
check_website() {
    local url="$1"
    local response=$(curl -s -o /dev/null -w "%{http_code}" "$url")

    set -e  # Exit immediately if a command exits with a non-zero status
    
    if [ "$response" == "200" ]; then
        echo "Website $url is up and running!"
    else
        echo "Website $url is down!"
    fi
}
# Call the function with a sample website
# check_website "https://www.example.com"