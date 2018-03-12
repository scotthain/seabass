
init:
	$(info Create some useful documentation!)

build:
	$(info Building)
	
test: 
	$(info Testing)

all: build test
	$(info Running Everything)

clean:
	$(info Cleaning up)

clean-docker: clean
	$(info Cleaning up Docker)

.PHONY: init build test all