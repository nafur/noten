tunes := $(wildcard tunes/*.abc)
build := $(subst tunes,build,$(tunes))
ps :=  $(build:abc=ps)
eps := $(build:abc=eps)
pdf := $(build:abc=pdf)

build/%.ps: tunes/%.abc
	abcm2ps -c -w 17.5cm -O $@ $<

build/%.eps: build/%.ps
	ps2eps -f $<

build/main.pdf: main.tex $(eps)
	pdflatex -interaction=nonstopmode --output-directory build --shell-escape main.tex

clean:
	rm -f build/* main.pdf