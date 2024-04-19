MAIN=demo
all:
	pdflatex -shell-escape $(MAIN).tex
	bibtex $(MAIN)
	pdflatex -shell-escape $(MAIN).tex
	pdflatex -shell-escape $(MAIN).tex

clean:
	rm *.aux *.bbl *.blg *.log *.nav *.out *.snm *.toc *.vrb $(MAIN).pdf
	rm -rf _minted-main