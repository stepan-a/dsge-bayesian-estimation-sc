LATEX = pdflatex

mhplots: build_mh_plots.m
	@echo "Build plots with matlab2tikz..."
	@matlab -nodesktop -nosplash -r "build_mh_plots; quit" > matlab.log

clean:
	rm mhplot-a.tex mhplot-b.tex mhplot-c.tex
	rm matlab.log

all: mhplots
