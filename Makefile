MAIN=demo
all:
	pdflatex $(MAIN).tex
	bibtex $(MAIN)
	pdflatex $(MAIN).tex
	pdflatex $(MAIN).tex

clean:
	rm *.aux *.bbl *.blg *.log *.nav *.out *.snm *.toc *.vrb $(MAIN).pdf