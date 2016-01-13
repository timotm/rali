# Raspberry Live

Build yourself a live Raspbian based Linux installation using Debian's live-build using your OS X computer. (Linux probably works, too)

All you need to have installed in your computer is [Vagrant](https://www.vagrantup.com/) and Make.

## Why?

Apart from being cool, live image also will not suffer from file system corruption due to unmanaged power down as filesystem is in memory.

## How?

Just type `make` to create a fresh image. Image creation will take a while. After image has been created, use `dd` to write it to an SD card.

Username is `pi` and password `live`.

`avahi-daemon` is included and hostname is set to pi.local, so you should be able to access your image with `ssh pi@pi.local` from another computer in the same LAN. Serial port has also been configured (115200 bps).

The image is rather minimalistic and only <300MB in size.

## Customization

* To add packages, add them to [the list of packages to be installed](build/config/package-lists/live.list.chroot)
* Kernel parameters are defined in [a hook script](build/config/hooks/0999-rpi-boot.hook.binary)

## Persistence

There is no built-in persistence, i.e. all changes made at runtime will be lost in the next reboot.

Should you want to, you can add persistence by having a USB key that's formatted (at least ext4 and vfat file systems should work) with label "persistence" and has a file `persistence.conf` in root with the following contents:

`/ union`

Now when you boot your system with this USB key attached, all changes to the file system will be persisted on the key (for as long as there's space left on the key), surviving reboots.

## More info

For more information about Debian Live, see the excellent manual ["Live Systems Manual"](https://debian-live.alioth.debian.org/live-manual/html/live-manual.en.html)
