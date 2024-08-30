# DEPENDENCIES
sudo pacman -S reflector git ufw sddm

# PACMAN
sudo pacman -Syu
sudo nvim /etc/pacman.conf
sudo reflector --latest 15 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Sy

# YAY
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# GRUB
sudo nvim /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

# SDDM
sudo nvim /usr/lib/sddm/sddm.conf.d/default.conf
sudo systemctl enable sddm.service

# UFW
sudo systemctl enable ufw.service
sudo systemctl start ufw.service

# PACKAGES
yay -S kitty fastfetch starship fish btop firefox python-pywalfox spotify spicetify-cli sddm hyprland-git xdg-desktop-portal-hyprland udiskie polkit-kde-agent qt5-wayland qt6-wayland cliphist wl-clip-persist wofi libreoffice-still pavucontrol-gtk3 bottles wine gamemode corectrl pywal-16-colors swww waypaper themix-theme-oomox-git ttf-iosevka-nerd bibata-cursor-theme vulkan-radeon lib32-vulkan-radeon unzip ani-cli

#CONFIGS
cp -r ~/dotfiles/btop ~/.config
cp -r ~/dotfiles/fish ~/.config
cp -r ~/dotfiles/hypr ~/.config
cp -r ~/dotfiles/kitty ~/.config
cp -r ~/dotfiles/nvim ~/.config
cp -r ~/dotfiles/wallpapers ~/.config

# GTK
gsettings set org.gnome.desktop.interface cursor-theme Bibata-Modern-Classic
gsettings set org.gnome.desktop.interface font-name 'Iosevka Nerd Font'

# REBOOT
sudo reboot

