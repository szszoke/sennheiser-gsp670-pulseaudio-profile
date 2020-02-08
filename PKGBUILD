# Maintainer: Szabolcs Szőke <szszoke[dot]code[at]gmail[dot]com>

pkgname=sennheiser-gsp670-pulseaudio-profile
pkgver=1.2
pkgrel=1
pkgdesc="PulseAudio configuration for the Sennheiser GSP670 wireless gaming headset"
arch=("any")
url="https://github.com/szszoke/sennheiser-gsp670-pulseaudio-profile"
license=("MIT")
provides=()
conflicts=()

depends=(pulseaudio)
optdepends=()
source=("install"
        "LICENSE"
        "91-pulseaudio-sennheiser-gsp670.rules"
        "sennheiser-gsp670-input-comm.conf"
        "sennheiser-gsp670-output-comm.conf"
        "sennheiser-gsp670-output-main.conf"
        "sennheiser-gsp670-usb-audio.conf")
md5sums=('eefd8c1b1f24cf7a373d67b3c3c75227'
         'c2ce893bf72d384c4d7fd3cea29e8dd8'
         '6061161797318c54d7c6f8ddc6dbb2c2'
         '8792fb0663d66bbe502b4eecba9555e9'
         'fd864268e5730bc22879771563a39534'
         '782f89a0995be7290e8a9aad23388686'
         '29f036405f02289edd8cc1e195d112b6')
package() {
  install -d "${pkgdir}/usr/share/licenses/${pkgname}"

  install -d "${pkgdir}/etc/udev/rules.d"
  install -d "${pkgdir}/usr/share/pulseaudio/alsa-mixer/profile-sets"
  install -d "${pkgdir}/usr/share/pulseaudio/alsa-mixer/paths"

  install -m644 "LICENSE" "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"

  ./install ${pkgdir}/
}

pkgver() {
  git describe --tags | sed 's/\([^-]*-g\)/r\1/;s/-/./g'
}
