default: clean build

build:
	scryer-prolog -g 'run("aguasal", "output"),halt' aguasal.pl
	cp -r obsolescencia-programada output/

upload:
	netlify deploy --prod

clean:
	rm -rf output
