sudo apt update
sudo apt install build-essential libpam0g-dev libxcb-xkb-dev

# install ly
git clone --recurse-submodules https://github.com/fairyglade/ly ~/.local/src/ly
cd ~/.local/src/ly
make
sudo make install installsystemd
sudo systemctl disable lightdm && sudo systemctl enable ly
