all:
	jekyll build --drafts

start:
	@echo "=> starting server and watching for changes"
	make && make watch & (cd _site && python -m SimpleHTTPServer)

watch:
	@echo "=> watching for changes"
	@git ls-files | entr make

