# This profile is likely not needed anymore

Linux kernel 5.15 and newer should support the dongle with updated firmware.
PipeWire 0.3.38 or newer should have the required audio profiles.
PulseAudio 16.0 or newer should have the required audio profiles.

If you are not running older software than what is written above then you should not use this profile.

# Sennheiser GSP 670 PulseAudio profile

Product page: https://en-us.sennheiser.com/gaming-headset-wireless-gsp-670

Like some other headphones, the Sennheiser GSP 670 provides a main and a communication audio device.

This custom profile is needed to make PulseAudio detect both the main and the communication devices.

## Supported devices
1. GSA 70 wireless dongle
2. GSP 670 gaming headset

## Installation

### Debian-based distributions

Download the latest `*.deb` release and install it with `dpkg`:

```bash
sudo dpkg -i pulseaudio-sennheiser-gsp670_x_all.deb
```

### Arch-based distributions

Download the latest `*.pkg.tar.xz` release and install it with `pacman`:

```bash
sudo pacman -U sennheiser-gsp670-pulseaudio-profile-x-1-any.pkg.tar.xz
```

Installing with `pacman` will fail if the `install` script was use before. This is normal and expected since the files already exist on the system.

There are two ways to address this issue:
1. Remove the conflicting files
2. Tell `pacman` to overwrite the conflicting files

This only has to be done a single time. Once the files were installed using `pacman`, no errors with conflicting files will occur.

Use the following command to make `pacman` overwrite the conflicting files:

```bash
sudo pacman -U sennheiser-gsp670-pulseaudio-profile-1.1.r3.g627a636-1-any.pkg.tar.xz --overwrite /etc/udev/rules.d/91-pulseaudio-sennheiser-gsp670.rules,/usr/share/pulseaudio/alsa-mixer/paths/sennheiser-gsp670-input-comm.conf,/usr/share/pulseaudio/alsa-mixer/paths/sennheiser-gsp670-output-comm.conf,/usr/share/pulseaudio/alsa-mixer/paths/sennheiser-gsp670-output-main.conf,/usr/share/pulseaudio/alsa-mixer/profile-sets/sennheiser-gsp670-usb-audio.conf
```

### Other distributions

Clone this repository and use the `install` script:

```bash
sudo ./install
```

## Post installation steps

### Restart PulseAudio

```bash
pulseaudio -k
pulseaudio --start
```

### Reconnect the dongle

If the dongle is already connected then unplug it and plug it back in again.
