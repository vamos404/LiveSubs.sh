#!/bin/bash
# Author: Nazir Bin Nazrul
# Description: Simple BASH script to filter out live subdomains.
# Date creation: 31/10/2024
# Last Modified: 31/10/2024

echo
while read subdomain; do
    if curl --output /dev/null --silent --head --fail "http://$subdomain"; then
        echo "$subdomain"
    fi
done < subdomains.txt
