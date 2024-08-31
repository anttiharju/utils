SHELL := bash
.ONESHELL:
.SHELLFLAGS := -euo pipefail -c
MAKEFLAGS += --warn-undefined-variables

setup:
	./install.sh

shellcheck:
	./scripts/shellcheck.sh

.PHONY: setup shellcheck