tunes := $(wildcard tunes/*.abc)
build := $(subst tunes,build,$(tunes))
ps :=  $(build:abc=ps)
eps := $(build:abc=eps)
pdf := $(build:abc=pdf)

build/%.ps: tunes/%.abc
	abcm2ps -c -w 17.5cm -O $@ $<

build/%.eps: build/%.ps
	ps2eps -f $<

build/%.pdf: build/%.eps
	epstopdf --gsopt=-dCompatibilityLevel=1.5 $< -outfile=$@

build/main.pdf: main.tex $(pdf)
	pdflatex -interaction=nonstopmode --output-directory build --shell-escape main.tex

clean:
	rm -f build/* main.pdf