PORT ?= 3000
bundle := env BUNDLE_GEMFILE=./_/Gemfile bundle

start: bundle
	${bundle} exec jekyll serve --drafts --watch --port ${PORT}

build: bundle
	${bundle} exec jekyll build

bundle:
	${bundle}
