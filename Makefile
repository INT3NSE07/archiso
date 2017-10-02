all: build

clean:
	sudo rm -rf out/
	sudo rm -rf work/

build:
	sudo ./build.sh -v

.PHONY: all clean build
