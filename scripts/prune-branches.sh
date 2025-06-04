#!/bin/sh
set -eu

# prune-branches
# delete all local branches except the current one, main, and master

git branch | grep -v "^\*\|^  main$\|^  master$" | xargs git branch -D
