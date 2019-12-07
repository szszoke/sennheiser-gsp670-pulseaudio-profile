# Sennheiser GSP 670 PulseAudio profile

Product page: https://en-us.sennheiser.com/gaming-headset-wireless-gsp-670

Like some other headphones, the Sennheiser GSP 670 provides a main and a communication audio device.

This custom profile is needed to make PulseAudio detect both the main and the communication devices.

## Supported devices
1. GSA 70 wireless dongle
2. GSP 670 gaming headset

## Installation

### Debian-based distributions

Download the latest release and install it with `dpkg`:

```bash
sudo dpkg -i pulseaudio-sennheiser-gsp670_x_all.deb
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