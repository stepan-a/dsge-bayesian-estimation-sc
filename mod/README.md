To compile the slides, you need to have Matlab installed on your computer. Matlab is used to produce three figures in the slides (those illustrating the Metropolis-Hastings algorithm). You also need to install matlab2tikz which is provoided as a submodule.

 1. Install the submodule
5B	```script
	~$ git submodule --init
	```

 2. Modify the MATLAB variable in `plot/Makefile` (you need to provide the path to matlab binary)

 3. Use the makefile in the root directory:
	```script
	~$ make
	```
	This will trigger the build of the figures and compile the TeX files (in tex subfolder).
