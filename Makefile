serve:
	hugo server -D \
		--buildDrafts \
		--buildFuture \
		--disableFastRender \
		--bind 0.0.0.0 \
		--port 8085

production-build:
	hugo --minify

preview-build:
	hugo \
		--baseURL $(DEPLOY_PRIME_URL) \
		--buildDrafts \
		--buildFuture \
		--minify

clean:
	rm -rf public

build:
	hugo
