songs := $(wildcard songs/*.abc)
build := $(subst songs,build,$(songs))
ps :=  $(build:abc=ps)
eps := $(build:abc=eps)
pdf := $(build:abc=pdf)

build/%.ps: songs/%.abc
	abcm2ps -c -w 17.5cm -O $@ $<

build/%.eps: build/%.ps
	ps2eps -f $<

build/%.pdf: build/%.eps
	epstopdf --gsopt=-dCompatibilityLevel=1.5 $< -outfile=$@

build/main.pdf: main.tex $(pdf)
	pdflatex -interaction=nonstopmode --output-directory build --shell-escape main.tex

build/songs.zip: $(pdf)
	zip $@ build/*.pdf -x build/main.pdf -j

clean:
	rm -f build/* main.pdf