#!/usr/bin/env bash
git filter-branch -f --index-filter "git rm --cached --ignore-unmatch $1"

