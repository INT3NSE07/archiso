all: build

clean:
	sudo rm -rf out/
	sudo rm -rf work/

build:
	./db.sh
	cp -r /var/cache/pacman/pkg ./airootfs/root/packages
	sudo ./build.sh -v

.PHONY: all clean build
