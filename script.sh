#!/bin/bash
find /var/log -type f | awk '{
    n = split($0, parts, "/");
    filename = parts[n];
    dirpath = substr($0, 1, length($0) - length(filename) - 1);
    printf "[%s, %s]\n", filename, dirpath;
}'
