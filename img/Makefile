TEXFILES = mhplot-a.tex mhplot-b.tex mhplot-c.tex
MATLAB=/home/${USER}/matlab/R2017a/bin/matlab

all: mhplot-a.tex clean

mhplot-a.tex: build_mh_plots.m 
	@echo "Build plots with matlab2tikz..."
	@${MATLAB} -nodesktop -nosplash -r "addpath('../matlab2tikz/src');  build_mh_plots; exit" > matlab.log

clean:
	@rm -f matlab.log

cleanall:
	@rm $(TEXFILES)
	@rm plots.done
