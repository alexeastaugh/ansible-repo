.PHONY: help

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

setup: ## Builds test environemht using Vagrant
	cd vagrant && vagrant up

check:
	ansible-playbook vagrant_test.yml --check

cleanup: ## Cleanup environment
	cd vagrant && vagrant destroy
