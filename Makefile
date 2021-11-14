.PHONY: build
build:
	/home/aarroyoc/dev/scryer-prolog/target/release/scryer-prolog -g 'run("aguasal", "output"),halt' aguasal.pl

.PHONY: clean
clean:
	rm -rf output