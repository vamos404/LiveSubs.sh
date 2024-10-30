#!/bin/bash

echo
while read subdomain; do
    if curl --output /dev/null --silent --head --fail "http://$subdomain"; then
        echo "$subdomain"
    fi
done < subdomains.txt
