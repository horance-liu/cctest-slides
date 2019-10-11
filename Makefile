latexfile = cctest

all: prepare pdf

prepare:
	mkdir -p output tmp

pdf: $(latexfile).tex
	xelatex --aux-directory=tmp --output-directory=output $(latexfile).tex

clean:
	rm -rf tmp output

.PHONY: all prepare clean
