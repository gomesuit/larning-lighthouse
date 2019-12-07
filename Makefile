install:
	npm install

help:
	npx lighthouse --help

example:
	npx lighthouse https://example.com/ \
		--output json --output html \
		--output-path ./outputs/report

build:
	git clone --depth 1 https://github.com/GoogleChromeLabs/lighthousebot.git docker-images
	cd docker-images/builder && \
	yarn build
