#!/bin/sh
set -eu

# Git Discard

git reset HEAD
git checkout -- .
git clean -fd
