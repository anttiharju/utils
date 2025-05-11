#!/bin/sh

git config --local "branch.$(git branch --show-current).pushRemote" origin
