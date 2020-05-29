# Provides rules for the following builds:
# %.ly -> %.pdf
#	Generates sheet music for the single given song.
# %.ly -> %.midi
#	Generates a midi file for the single given song.
# %.lytex -> %.pdf
#	Generates a pdf from a latex file with embedded lilypond commands.
#
# Legacy: %.abc -> %.pdf

abcsongs := $(wildcard songs/*.abc)
lysongs := $(wildcard songs/*.ly)
texfiles := $(wildcard *.lytex)
abcbuild := $(subst songs,build,$(abcsongs))
lybuild := $(subst songs,build,$(lysongs))
tex := $(addprefix build/,$(texfiles))
pdf := $(abcbuild:abc=pdf) $(lybuild:ly=pdf)
midi := $(lybuild:ly=midi)

.PHONY: clean

all: $(pdf) $(tex:lytex=pdf)

build/%.pdf: songs/%.ly
	lilypond -f pdf -o build/ $<

build/%.midi: songs/%.ly
	lilypond -f midi -o build/ $<

build/%.pdf: %.lytex
	lilypond-book --output build/ --pdf $<
	cd build/ && pdflatex -interaction=nonstopmode --shell-escape $(<:lytex=tex)

build/songs.zip: $(pdf)
	zip $@ $^ -j

build/midi.zip: $(midi)
	zip $@ $^ -j

# Legacy for abc files
build/%.pdf: songs/%.abc
	abcm2ps -c -w 17.5cm -O $(@:pdf=ps) $<
	ps2eps -f $(@:pdf=ps)
	epstopdf --gsopt=-dCompatibilityLevel=1.5 $(@:pdf=eps) -outfile=$@

clean:
	rm -rf build/*