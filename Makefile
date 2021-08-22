clean:
	rm -rf node_modules
	rm -rf _site
	rm -rf vendor
	rm *.lock package-lock.json


node_modules:
	npm install


setup: node_modules
	bundle


watch:
	npx tailwindcss -o assets/css/styles.css --watch


server:
	bundle exec jekyll serve


build-tailwind: node_modules
	NODE_ENV=production npx tailwindcss -o assets/css/styles.css --minify


build-jekyll:
	docker run \
		-v "$(shell pwd)":/srv/jekyll \
		jekyll/builder:latest \
		/bin/bash -c "chmod -R 777 /srv/jekyll && jekyll build"  # --future


build: build-tailwind build-jekyll
