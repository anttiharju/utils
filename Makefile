SHELL := bash
.ONESHELL:
.SHELLFLAGS := -euo pipefail -c
MAKEFLAGS += --warn-undefined-variables

setup: configure_hooks
	./scripts/install.sh

configure_hooks:
	git config --local core.hooksPath .githooks/

shellcheck:
	@./scripts/shellcheck.sh

docs:
	@./scripts/g-docs/generate.sh
	@bin/g

ci: shellcheck

clean:
	rm -rf ./cache/*

.PHONY: setup configure_hooks shellcheck docs ci clean
