#!/bin/bash
sort -o domains.txt domains.txt
cat domains.txt | awk '{print "google.*##[href*=\"" $0 "\"]:nth-ancestor(2)" }' > list.txt
