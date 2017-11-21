NODE_SASS_BIN := node_modules/node-sass/bin/node-sass
HUGO := hugo
YARN := yarn

install:
	$(YARN) install
css-compile:
	$(NODE_SASS_BIN) --output-style expanded --source-map true --source-map-contents true --precision 6 src/style.scss static/css/style.css
build-jquery:
	cp node_modules/jquery/jquery.min.js static/js/vendor/
build-popper:
	cp node_modules/popper.js/dist/popper.min.js static/js/vendor/
build-bootstrapjs:
	cp node_modules/bootstrap/dist/js/bootstrap.min.js static/js/vendor/

build: css-compile build-jquery build-popper build-bootstrapjs
	$(HUGO) --source=exampleSite --themesDir=../..
serve: css-compile build-jquery build-popper build-bootstrapjs
	$(HUGO) server --source=exampleSite --themesDir=../..

######################
generate-githubpages:
	$(HUGO) --source=exampleSite --themesDir=../.. && mv exampleSite/public docs && touch docs/.nojekyll
