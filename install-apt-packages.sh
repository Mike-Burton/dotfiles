#/i/bash

#i3 (https://i3wm.org/docs/repositories.html)
/usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2022.02.17_all.deb keyring.deb SHA256:52053550c4ecb4e97c48900c61b2df4ec50728249d054190e8a0925addb12fc6
apt install -y ./keyring.deb
echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list
apt update
apt -y install i3

# backgroud
apt install -y nitrogen

# compositor
apt install -y picom

# terminal emulator
add-apt-repository -y ppa:aslatter/ppa
apt update
apt install -y alacritty

# blue light shift
apt install -y redshift-gtk

# git 
add-apt-repository -y ppa:git-core/ppa
apt update
apt install -y git

