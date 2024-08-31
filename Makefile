SHELL := bash
.ONESHELL:
.SHELLFLAGS := -euo pipefail -c
MAKEFLAGS += --warn-undefined-variables

setup:
	./install.sh

.PHONY: setup