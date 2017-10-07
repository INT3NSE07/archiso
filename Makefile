all: build

clean:
	sudo rm -rf out/
	sudo rm -rf work/

build:
	sudo ./db.sh
	mv pacmandb/ ./airootfs/root/pacmandb
	cp -r /var/cache/pacman/pkg ./airootfs/root/packages
	sudo ./build.sh -v

.PHONY: all clean build
