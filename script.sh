sudo apt update
sudo apt install -y build-essential

# install ly
sudo apt install -y libpam0g-dev libxcb-xkb-dev
git clone --recurse-submodules https://github.com/fairyglade/ly ~/.local/src/ly
(cd ~/.local/src/ly && make)
(cd ~/.local/src/ly && sudo make install installsystemd)
sudo systemctl disable lightdm && sudo systemctl enable ly && test -f ./ly.config && sudo cp ./ly.config /etc/ly/config.ini

# install dwm
sudo apt install -y libx11-dev libxft-dev libxinerama-dev dmenu
(cd ./dwm-patched && make)
(cd ~/.local/src/ly && sudo make clean install)

# Keyboard -> application shortcuts -> select and remove all
# Go to session manager -> application autostart -> disable "user folders update" -> add dwm in autostart ->
# -> current session -> disable xfwm, xfce-panel, xfdesktop -> save session -> reboot
