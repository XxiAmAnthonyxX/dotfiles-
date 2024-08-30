# GENERATE COLOR SCHEME
wal --cols16 -i ~/.config/wallpapers/crow.jpg

# SET WALLPAPERS
waypaper

# GENERATE GTK THEME
oomox-cli -o oomox ~/.cache/wal/colors-oomox

# APPLY GTK THEME
gsettings set org.gnome.desktop.interface gtk-theme "oomox"

# LOG IN
spotify

# PERMISSIONS
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R

# ENABLE DEVTOOLS
spicetify backup apply enable-devtools

# LYRICS
spicetify config custom_apps lyrics-plus
spicetify apply

# MARKEPLACE
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh

# INSTALL ADBLOCK & THEME
spotify

# FULLY CONFIGURE
firefox

# SETUP AUDIO
pavucontrol

# CONFIGURE UNDERCLOCK
corectrl
