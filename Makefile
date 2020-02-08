VERSION=1.2

.PHONY: all build-deb

all: build-deb build-aur

clean:
	rm -rf build
	rm -rf src
	rm -rf pkg
	rm -f *.deb
	rm -f *.pkg.tar.xz

build-deb:
	mkdir -p build/deb/DEBIAN build/deb/etc/udev/rules.d build/deb/usr/share/pulseaudio/alsa-mixer/profile-sets build/deb/usr/share/pulseaudio/alsa-mixer/paths
	cp control build/deb/DEBIAN/
	./install build/deb/
	dpkg-deb --build build/deb build/pulseaudio-sennheiser-gsp670_${VERSION}_all.deb

build-aur:
	updpkgsums
	makepkg