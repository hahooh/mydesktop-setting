# need to get some stuff from /etc/X11/xinit ?? maybe

#twm &
#xclock -geometry 50x50-1+1 &
#xterm -geometry 80x50+494+51 &
#xterm -geometry 80x20+494-0 &
#exec xterm -geometry 80x66+0+0 -name login

# i3 settings
# exec i3

# ---------------------- NOT GOOD --------------
# budgie-desktop settings ( SOLUS )
# https://getsol.us
# https://wiki.archlinux.org/index.php/Budgie
# export XDG_CURRENT_DESKTOP=Budgie:GNOME
# exec budgie-desktop
# -----------------------------------------------

# ---------------------- CANNOT CONFIGURE -----------
# enlightenment
# https://enlightenment.org
# https://wiki.archilinux.org/index.php/Enlightenment
# exec /usr/bin/enligntenment_start
# ---------------------------------------------------

# --------------------- Good but too heavy ----------
# Plasma
# export DESKTOP_SESSION=plasma
# exec startplasma-x11
# ----------------------------------------------------

# ---- Really light and responsive but really ugly ----
# LXDE
# exec startlxde
# -----------------------------------------------------

# ------------ Amazingly it is not usable at all ------
# LXQT
# exec startlxqt
# -----------------------------------------------------

# Crashes system!!!
# Korean input method
# SCIM
# export XMODIFIERS="@im=SCIM"
# export GTK_IM_MODULE=scim
# export QT_IM_MODULE=scim
# scim -d

# start input method
# fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitx &

# Monitor set up 
xrandr --output HDMI1 --primary --auto --output HDMI2 --auto --right-of HDMI1

# status bar
statusbar.sh &

# restore sound config
alsactl --file ~/.config/asound.state restore

# set wall paper
xwallpaper --zoom ~/.config/wallpaper/wallpaper.jpg

# dwm from Suckless
exec dwm
