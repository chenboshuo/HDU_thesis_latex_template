.PHONY : all clean help main open_report
.ONESHELL: # Applies to every targets in the file!
.INTERMEDIATE : inkscape tree

## make all : regenerate all results.
all:  main draft

## make main : genreate the main pdf
main: build/main.pdf

## make *.pdf : generate the pdf files
build/%.pdf: %.tex build
	xelatex -output-directory="./build" $<
	bibtex ./build/$(basename $<)
	xelatex -output-directory="./build" $<
	xelatex -output-directory="./build" $<

# draft version
draft.tex : build
	echo "\documentclass[master,draft]{styles/hdu-thesis}" > draft.tex
	awk 'FNR>2' main.tex >> draft.tex

## make draft: make build/draft.pdf
draft: build/draft.pdf
	rm -f draft.tex

clean:
	# git ls-files --others | xargs gio trash
	git clean -fXd

## make build: create directory build
build:
	mkdir build


## make help : show this message.
help :
	@grep -h -E '^##' ${MAKEFILE_LIST} | sed -e 's/## //g' \
		| column -t -s ':'
