ROOT_PATH = .

all: slide-build

plot-build:
	$(MAKE) -C $(ROOT_PATH)/img all

slide-build: plot-build
	$(MAKE) -C $(ROOT_PATH)/tex all
