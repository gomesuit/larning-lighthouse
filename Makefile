install:
	npm install

help:
	npx lighthouse --help

example:
	npx lighthouse https://example.com/ \
		--output json --output html \
		--output-path ./outputs/result

desktop:
	npx lighthouse https://example.com/ \
		--output json --output html \
		--output-path ./outputs/result \
		--config-path ./custom-config.js

# https://github.com/GoogleChromeLabs/lighthousebot/tree/master/builder
build:
	git clone --depth 1 https://github.com/GoogleChromeLabs/lighthousebot.git docker-images
	cd docker-images/builder && \
	yarn build

docker-example:
	docker run -it --rm --cap-add=SYS_ADMIN lighthouse_ci https://example.com --quiet > outputs/report.html

shell:
	docker run -it --rm --cap-add=SYS_ADMIN --entrypoint sh lighthouse_ci -c bash
