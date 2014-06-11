LATEX = pdflatex

slides.pdf: slides.tex
	while ($(LATEX) slides.tex ; \
	grep -q "Rerun to get cross" slides.log ) do true ; \
	done

exo.pdf: exo.tex
	while ($(LATEX) exo.tex ; \
	grep -q "Rerun to get cross" exo.log ) do true ; \
	done


clean:
	rm -f *.aux *.log *.out *.nav *.rel *.toc *.snm *.synctex.gz *.vrb
	rm -rf auto

cleanall:
	rm -f *.pdf

all: slides.pdf exo.pdf clean
