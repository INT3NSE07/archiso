all: clean build

clean:
	sudo rm -rf out/
	sudo rm -rf work/
	sudo rm -rf ./airootfs/root/packages
	sudo rm -rf ./airootfs/root/pacmandb

build:
	./db.sh
	cp -r /var/cache/pacman/pkg ./airootfs/root/packages
	time sudo ./build.sh -v

.PHONY: all clean build
