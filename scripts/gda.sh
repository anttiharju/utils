#!/bin/sh
set -eu

# Git Discard All

git reset --hard
git clean -df
git clean -dfx -e "*/.flox/**" -e "collections/**" -e "automation/bin/**" -e "plugins/**"
