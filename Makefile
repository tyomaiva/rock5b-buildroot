setup:
	sudo apt install -y build-essential gcc g++ autoconf automake libtool bison flex gettext patch texinfo wget git gawk curl lzma bc quilt cpio unzip rsync python3

build: setup
	buildroot.rockchip.ext/setup.sh
	mkdir buildroot.dl
	cd buildroot && make

# Useful commands:
# make menuconfig

# Currently, the latest buildroot is used. Do we really need to go back to 2022.05?
# cd buildroot && git checkout 2022.05


write-sd:
	sudo dd if=buildroot/output/images/sdcard.img of=/dev/sdXX???
