TEXFILES = mhplot-a.tex mhplot-b.tex mhplot-c.tex


all: plots.done clean

plots.done: build_mh_plots.m 
	@echo "Build plots with matlab2tikz..."
	@matlab -nodesktop -nosplash -r "build_mh_plots; quit" > matlab.log
	@touch plots.done


clean: 
	@rm -f matlab.log

cleanall:
	@rm $(TEXFILES)
	@rm plots.done
