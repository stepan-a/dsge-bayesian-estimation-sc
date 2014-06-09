LATEX = pdflatex

mhplots: build_mh_plots.m
	matlab -r "build_mh_plots; quit"

clean:
	rm mhplot-a.tex mhplot-b.tex mhplot-c.tex

all: mhplots
