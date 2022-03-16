# Maintainer: Szabolcs Szőke <szszoke[dot]code[at]gmail[dot]com>

pkgname=sennheiser-gsp670-pulseaudio-profile
pkgver=1.3
pkgrel=1
pkgdesc="PulseAudio configuration for the Sennheiser GSP670 wireless gaming headset"
arch=("any")
url="https://github.com/szszoke/sennheiser-gsp670-pulseaudio-profile"
license=("MIT")
provides=()
conflicts=()

depends=(pulseaudio)
optdepends=()
source=(
        "install"
        "LICENSE"
        "91-pulseaudio-sennheiser-gsp670.rules"
        "sennheiser-gsp670-input-comm.conf"
        "sennheiser-gsp670-output-comm.conf"
        "sennheiser-gsp670-output-main.conf"
        "sennheiser-gsp670-usb-dongle-audio.conf"
        "sennheiser-gsp670-usb-headset-audio.conf"
      )
md5sums=(
         'SKIP'
         'c2ce893bf72d384c4d7fd3cea29e8dd8'
         'f384eef0fb6cd246e70f21bbf52c6578'
         '8792fb0663d66bbe502b4eecba9555e9'
         'fd864268e5730bc22879771563a39534'
         '782f89a0995be7290e8a9aad23388686'
         'da9070794ab59568c658c7ca56d46f6e'
         '29f036405f02289edd8cc1e195d112b6'
         )
package() {
  install -d "${pkgdir}/usr/share/licenses/${pkgname}"

  install -d "${pkgdir}/etc/udev/rules.d"
  
  #old
  install -d "${pkgdir}/usr/share/pulseaudio/alsa-mixer/profile-sets"
  install -d "${pkgdir}/usr/share/pulseaudio/alsa-mixer/paths"
  
  #new
  install -d "${pkgdir}/usr/share/alsa-card-profile/mixer/profile-sets"
  install -d "${pkgdir}/usr/share/alsa-card-profile/mixer/paths"

  install -m644 "LICENSE" "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"

  ./install ${pkgdir}/
}

pkgver() {
  git describe --tags | sed 's/\([^-]*-g\)/r\1/;s/-/./g'
}

post_install() {
  udevadm control --reload
  udevadm trigger
}

post_upgrade() {
  udevadm control --reload
  udevadm trigger
}
