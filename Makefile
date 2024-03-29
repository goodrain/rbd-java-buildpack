SHELL := /bin/bash

default: help
.PHONY: help
help:  ## this help
		@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {sub("\\\\n",sprintf("\n%22c"," "), $$2);printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: build
build: ## build offline
	./build.sh

.PHONY: clean
clean:
	./clean.sh