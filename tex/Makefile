LATEX = pdflatex

slides.pdf: slides.tex
	@echo "Compile slides..."
	@while ($(LATEX) slides.tex > /dev/null ; \
	grep -q "Rerun to get cross" slides.log ) do true ; \
	done
	@echo "Produced slides.pdf!"

exo.pdf: exo.tex
	@echo "Compile exercises..."
	@while ($(LATEX) exo.tex > /dev/null ; \
	grep -q "Rerun to get cross" exo.log ) do true ; \
	done
	@echo "Produced exo.pdf"

clean:
	rm -f *.aux *.log *.out *.nav *.rel *.toc *.snm *.synctex.gz *.vrb
	rm -rf auto

cleanall:
	rm -f *.pdf

all: slides.pdf exo.pdf clean
