#!/bin/sh

apt-get update
DEBIAN_FRONTEND=noninteractive apt-get -y install live-build qemu-user-static parted
gpg --no-default-keyring --keyring=/etc/rasbian.public.keyring --import <<EOF
-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v1.4.12 (GNU/Linux)

mQENBE94wmkBCADPW5ga8ZyIsW0pym3c+o7l/N1ipRfs2+9HaEWeyPZS6wdTdSp3
Wo0OOv3rGQDGclbvsrMZoJFzxfsADoMfPkToWg+pY4w3xkjZt4Mh7gO/kDsaOMDz
OQS2JCHQ3BgysEdiSzy1dMf2N/ziKItOUK8t2gI3QWLwe9eXg+Uv4VUtQO+TRz7o
qLMvbg32C1ahDfi416+Y7mopFTHh8qBOhZNGgdq240Vr6B9NCGywO2tl+8Nd87BS
fVgCTPtvabcf1RChQd6yH4K5WS0IFt8h5vkcgpJXa7sxUyJH/ysnUchsYA+2B0cP
UKUZrraRMfHuXhI2VNpRuZZSoSUn7/hkX4BlABEBAAG0Sk1pa2UgVGhvbXBzb24g
KFJhc3BiZXJyeSBQaSBEZWJpYW4gYXJtaGYgQVJNdjYrVkZQKSA8bXB0aG9tcHNv
bkBnbWFpbC5jb20+iQE4BBMBAgAiBQJPeMJpAhsDBgsJCAcDAgYVCAIJCgsEFgID
AQIeAQIXgAAKCRCRZZONkP3dLqEKCADE++X4BtDYxB1mONtOsKSPWE7dPzOP/Is/
x0+BnJahVf9rSZh26NWANwUMfVrZ9ImU+SHnFsuYGpJhb6mjauScXtfN4BrdptC3
aPBhlyAUst23r/Cw4r4zWJuYerLNAsKmzO3Gjk8Yi6mH80UtgwWFKdQcdVTelyVI
zRB/2RtilHtjpzHZGDeWi6wFxTGnd2wtHJ+h+HGSySofKAzM12ZtniTHZuTSijii
I90thwiydBEG4uIcuMQRyBeu3r5wCk4v+L0a/HZ4hrH2nU/65OxQdSSnCSjSHqcg
19T/+NN8hFQ51BSXdNJeGQRbPqB//6yA9zRMjFOhLhTod1sIeWEVuQENBE94wmkB
CACgDGyg0/0h2cgf5BrEXtDAwvPwPDH4IxCgmHA7fqZ+IeXFXDCIKtOdFVEmLGQY
yr6jL6M4P+DtgVnoru7jB8oPt0YcWRFztdPdIZgtL5E5rBDNusdSHn8DNXQizILm
KBRdoVywqS4Peesu1RuW4srQk/5vaXtCTuAjANISJsOIa+NIHIXufFERZN2kdO+W
Ch/IMYlmTsm3ino5a4kHL48H1LhVzUKLHR4yJ2K6W4HPCJZe6q8rJSqeyjtFUTu1
bXZ0PI/AVAHfCTY3z6BXhhVrx64ArwxcWvsbOurnKVaypO47Dvn0k4z9QCasFu6i
rmermJTDSmCEvqHDTm93xY5fABEBAAGJAR8EGAECAAkFAk94wmkCGwwACgkQkWWT
jZD93S4swwgAojOdjjQh0PFy/2qpHlVBJiDW2PJIrgMtuy8JHgVOHFq1vNB5FEoj
W/bxiok69OyKawu2cs6rg2eE3Ft5BoWErkXyBFYd77aa+E4wLp2bh5lNoY3TAO9y
FhfDAkwViZ3P/BozL4uOcMKXLi+D5JmuTtRgtlI9/UjYG38kMju2wvZDxOiokA+S
mpS3eF+NTMy5wxxHcMwBilX+Xm64cQp8EQROYXgjW4lEuJAaKWsS/ZEBqIeZHlaM
RYDJ6Y2ubJVFpp8YYCvbU/CuUzPTs1wnTBseXAskwdUEms+5IxJV3ovy44gU8d73
kDxVdsBg/Yhd7QORY6ZRi27AxYAsM3329g==
=gzRN
-----END PGP PUBLIC KEY BLOCK-----
EOF