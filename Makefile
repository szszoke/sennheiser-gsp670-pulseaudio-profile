VERSION=1.0

.PHONY: all build-deb

all: build-deb

clean:
	rm -rf build/*

build-deb:
	mkdir -p build/deb/DEBIAN build/deb/etc/udev/rules.d build/deb/usr/share/pulseaudio/alsa-mixer/profile-sets build/deb/usr/share/pulseaudio/alsa-mixer/paths
	cp control build/deb/DEBIAN/
	./install build/deb/
	dpkg-deb --build build/deb build/pulseaudio-sennheiser-gsp670_${VERSION}_all.deb
