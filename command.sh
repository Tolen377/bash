#!/bin/bash
find /var/log -type f | awk -F/ '{print $NF}'
