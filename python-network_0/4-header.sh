#!/bin/bash
# Sends a custom header with the request
curl -s -H "X-HolbertonSchool-User-Id:98" "$1"
