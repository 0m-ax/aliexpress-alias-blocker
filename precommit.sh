#!/bin/bash
sort -o domains.txt domains.txt
cat domains.txt | awk '{print "google.*###islrg a[href*=\"*." $0 "\"]:nth-ancestor(1)\ngoogle.*###search a[href*=\"*." $0 "\"]:nth-ancestor(2)" }' > list.txt
