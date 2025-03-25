#!/bin/sh
set -eu

# prune-branches
# delete all local branches except the current one

git branch | grep -v "^\*" | xargs git branch -D
