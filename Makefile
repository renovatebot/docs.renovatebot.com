default: install build

install:
	npm install
	pip install --upgrade pip
	pip install --upgrade mkdocs mkdocs-material==2.9.4

get-docs:
	bash bin/get-docs.sh

generate-config:
	bash bin/generate-config.sh

generate-presets:
	bash bin/generate-presets.sh

build-docs:
	bash bin/build-docs.sh

build: get-docs generate-config generate-presets build-docs