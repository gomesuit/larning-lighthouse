install:
	npm install

help:
	npx lighthouse --help

example:
	npx lighthouse https://example.com/ \
		--output json --output html \
		--output-path ./outputs/report
