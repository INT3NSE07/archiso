all: clean build

clean:
	sudo rm -rf work/

build:
	sudo ./build.sh -v
