# begin Makefile

build:
	rake generate

dist: build
	./s3cmd -c ~/.s3cfg.shsny -v sync --delete-removed public/. s3://xyzzy.shsny.org

# end Makefile
