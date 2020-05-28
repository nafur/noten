abcsongs := $(wildcard songs/*.abc)
lysongs := $(wildcard songs/*.ly)
abcbuild := $(subst songs,build,$(abcsongs))
lybuild := $(subst songs,build,$(lysongs))
pdf := $(abcbuild:abc=pdf) $(lybuild:ly=pdf)

.PHONY: clean

all: $(pdf)

build/%.ps: songs/%.abc
	abcm2ps -c -w 17.5cm -O $@ $<

build/%.pdf: songs/%.ly
	lilypond --pdf -o build/ $<

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