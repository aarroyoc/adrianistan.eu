default: clean build

build:
	scryer-prolog -g 'run("aguasal", "output"),halt' aguasal.pl
	cp -r obsolescencia-programada output/

get-deps:
	rm -rf teruel
	git clone --depth 1 https://github.com/aarroyoc/teruel

clean:
	rm -rf output
