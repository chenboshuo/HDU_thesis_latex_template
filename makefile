.PHONY : all clean help main open_report
.ONESHELL: # Applies to every targets in the file!
.INTERMEDIATE : inkscape tree

## make all : regenerate all results.
all: draft review release

## make main : genreate the main pdf
main: build/main.pdf

## make *.pdf : generate the pdf files
build/%.pdf: %.tex build
	xelatex -output-directory="./build" $<
	bibtex ./build/$(basename $<)
	makeglossaries -d ./build/ $(basename $<)
	xelatex -output-directory="./build" $<
	xelatex -output-directory="./build" $<

# draft version
draft.tex : build
	echo "\documentclass[master,draft]{styles/hdu-thesis}" > draft.tex
	awk 'FNR>2' main.tex >> draft.tex

## make draft: make build/draft.pdf
draft: build/draft.pdf
	rm -f draft.tex

# review version
review.tex : build
	echo "\documentclass[master_review]{styles/hdu-thesis}" > review.tex
	awk 'FNR>2' main.tex >> review.tex

## make draft: make build/draft.pdf
review: build/review.pdf
	rm -f review.tex

# release version
release.tex : build
	echo "\documentclass[master]{styles/hdu-thesis}" > release.tex
	awk 'FNR>2' main.tex >> release.tex

## make draft: make build/draft.pdf
release: build/release.pdf
	rm -f release.tex

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
