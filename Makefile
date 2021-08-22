clean:
	rm -rf node_modules
	rm -rf _site
	rm -rf vendor
	rm *.lock package-lock.json

setup:
	npm install
	bundle

watch:
	npx tailwindcss -o assets/css/styles.css --watch

server:
	bundle exec jekyll serve
