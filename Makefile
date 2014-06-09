ROOT_PATH = .

plot-build:
	$(MAKE) -C $(ROOT_PATH)/img all

slide-build:
	$(MAKE) -C $(ROOT_PATH)/tex all
