sudo apt update
sudo apt install git openssh-server
mkdir code
cd code
git clone https://github.com/rbtylee/bl-notes
git clone https://github.com/rbtylee/bookworm
git clone https://github.com/BodhiDev/Distros
git clone https://github.com/rbtylee/temp
sudo apt install arandr
cd tmp
mkdit tmp
mkdir tmp
cd tmp
wget http://packages.bodhilinux.com/bodhi/pool/b7main/b/bodhilinux-keyring/bodhilinux-keyring_2022.11.07_all.deb
wget http://packages.bodhilinux.com/bodhi/pool/b7main/b/bodhi-info-moksha/bodhi-info-moksha_0.0.1-1_all.deb
wget http://packages.bodhilinux.com/bodhi/pool/b7debbie/d/debian-system-adjustments/debian-system-adjustments_2020.07.29_all.deb
wget http://packages.bodhilinux.com/bodhi/pool/b7debbie/b/bodhi-settings/bodhi-settings_0.0.1-7_all.deb
ls
sudo apt -y --no-install-recommends install ./*.deb
sudo apt update
sudo apt  -y --no-install-recommends  install arandr bodhi-bins-default bodhi-quickstart  elaptopcheck moksha-menu moksha bodhi-theme-moksha-green bodhi-theme-moksha-e17gtk
sudo apt  -y install gtk-recent pavucontrol xclip bc udisks2
sudo apt -y install synaptic terminology ephoto-bl leafpad bodhi-chromium thunar-bl xdg-user-dirs policykit-1-gnome
sudo apt -y install bodhi-appcenter bodhi-icons bodhi-skel
which apturl
sudo apt -y install apturl-saf
exit
apt list --installed > INIT.pkgs
nano INIT.pkgs 
sudo apt install geany
sudo apt purge xfce*
sudo apt purge libreoffice*
ls /etc/libreoffice
sudo rm -rf /etc/libreoffice
sudo apt autopurge
sudo apt purge cups*
ls /etc/cups
sudo rm -rf  /etc/cups
sudo apt purge mouspad vim
sudo apt purge mousepad vim
sudo apt autopurge
sudo apt purge xsane
sudo apt autopurge
sudo apt purge vim-tiny
sudo apt purge vim-common 
sudo apt purge system-config-printer*
sudo apt autopurge
apt list --installed > NOW.txt
sudo apt purge hv3 hunspell-en-us firefox-esr
sudo apt purge atril*
sudo apt autopurge
apt list --installed > NOW.txt
sudo apt purge lynx*
sudo apt purge orca
sudo apt autopurge
sudo apt purge xfburn 
sudo apt purge exfalso
sudo apt autopurge
sudo apt purge parole 
sudo apt autopurge
sudo apt purge xterm 
apt list --installed > NOW.txt
sudo apt purge xarchiver 
sudo apt purge thunar-media-tags-plugin
sudo apt install engrampa lxterminal
sudo apt purge bluez
sudo apt autopurge
sudo apt purge anacron
sudo apt purge apt-listchanges 
sudo apt autopurge
sudo apt purge aspell*
sudo apt purge imagemagick*
sudo apt autopurge
sudo apt purge ispell 
sudo apt install iamerican
sudo apt install --no-install-recommends iamerican
sudo apt purge gnome-themes-extra*
sudo apt install  gtk2-engines-pixbuf
sudo apt autoremove
sudo apt purge gnome-keyring*
sudo apt autoremove
apt list --installed > NOW.txt 
sudo apt purge bubblewrap/
sudo apt purge bubblewrap
sudo apt purge xdg-desktop-portal*
sudo apt autoremove
apt list --installed > NOW.txt 
sudo apt purge light-locker
apt list --installed > NOW.txt 
sudo apt update
sudo apt install rfkill inxi 
apt list --installed > NOW.txt
sudo apt install build-essential 
apt-cache policy libc6-dev
sudo apt install libc6-dev
sudo apt install libc6
sudo apt remove libc6
sudo apt install libc6-dev
sudo apt install build-essential 
sudo apt-get install linux-headers-$(uname -r)
sudo apt purge discover
sudo apt autoremove
sudo apt purge doc-debian
sudo apt purge fonts-symbola fonts-quicksand fonts-liberation fonts-urw-base35
sudo apt purge fonts-symbola fonts-quicksand fonts-liberation
sudo apt autoremove
sudo apt install libplymouth5 plymouth plymouth-label
sudo apt autopurge
sudo apt purge ghostscript
sudo apt purge git git-man
sudo apt autopurge
sudo apt purge gstreamer1.0-libav gstreamer1.0-plugins-bad
sudo apt install gstreamer1.0-pulseaudio
sudo apt install gstreamerng
sudo apt autopurge
sudo ifupdown
sudo apt purge  ifupdown
sudo apt purge inetutils-telnet
sudo apt purge installation-report 
sudo apt purge mythes-en-us
sudo apt purge pinentry-gnome3
sudo apt autopurge
sudo apt purge pocketsphinx-en-us
sudo apt purge powertop
sudo apt purge rpcsvc-proto
sudo apt purge sane-airscan
sudo apt purge sane-utils
apt list --installed > NOW.txt 
sudo apt purge wireless-tools
apt list purge avahi*
apt purge avahi*
sudo apt purge avahi*
sudo apt autopurge
sudo apt install command-not-found
sudo apt purge colord*
sudo apt install acl
sudo apt autopurge
sudo apt install curl
sudo apt purge debian-faq
sudo apt install dialog
sudo apt install dkms
sudo apt install ed
sudo apt purge enchant-2
sudo apt purge fonts-liberation2
sudo apt install fonts-unifont
sudo apt install friendly-recovery
sudo apt purge polkitd-pkla
sudo apt purge poppler-utils
sudo apt purge tango-icon-theme
sudo apt purge traceroute
sudo apt purge xml-core
ssudo apt purge x11-apps
sudo apt purge x11-apps
sudo apt purge python3-reportbug
sudo apt autopurge
exit
apt list --installed > NOW.txt 
sudo apt purge apt-file
sudo apt install --no-install-recommends command-not-found 
sudo apt-file update
sudo apt purge gstreamer1.0-alsa 
sudo apt purge ispell
sudo apt purge krb5-locales
sudo apt purge task-english
sudo apt install xapps-common
sudo apt install xserver-xorg-input-synaptics
sudo apt install deborphan
deborphan
sudo apt install memtest86+ 
sudo apt purge dbus-bin
sudo apt install cryptsetup
sudo apt purge krb5-locales
sudo apt purge cron-daemon-common
sudo apt install gvfs-backends
sudo apt install --no-install-recommends gvfs-backends
sudo apt install fonts-lato
sudo apt install bodhi-plymouth-text bodhi-plymouth-theme 
sudo plymouth-set-default-theme -l
plymouth-set-default-theme -R bodhi-boss
sudo plymouth-set-default-theme -R bodhi-boss
cd /home/ylee/code/temp/Debian/
sudo cp grub /etc/default/
sudo update-grub
cd /home/ylee/code/bookworm/Grub/grub.d/
sudo cp 50_bodhilinux.cfg /etc/default/grub.d/
sudo update-grub
pkexec thunar
sudo update grub
sudo update-grub
sudo apt update-grub
sudo update-grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
pkexec leafpad /etc/default/grub
sudo update-grub
sudo apt purge desktop-base
pkexec leafpad /etc/default/grub
sudo update-grub
exit
sudo apt update
sudo apt upgrade
pkexec thunar
cd code/bookworm/
git pull
sudo apt install git
git pull
cd Grub
ls
sudo cp grub.ufc-dist /etc/default/
sudo update-grub
dpkg -l lightdm*
sudo apt purge  lightdm-gtk-greeter
sudo apt install slick-greeter 
sudo apt purge lightdm-gtk-greeter 
sudo apt install bodhi-slick-theme 
git clone https://github.com/rbtylee/rebod
cd rebod
sudo apt install ./rebod_0.1-1_all.deb 
rebod dist
sudo rebod dist
sudo apt install gparted isoquery
sudo apt install syslinux-utils 
sudo apt install live-boot
sudo apt install live-config live-config-systemd live-installer
sudo apt install live-config live-config-systemd
sudo apt install menu
sudo apt install insserv
sudo apt purge insserv
sudo apt update
pkexec leafpad /bin/rebod 
sudo -i leafpad /bin/rebod 
sudo rm -rf ../rebod
ls /home
sudo rebod dist
sudo apt install rsync
sudo rm -rf ../rebod
which x-terminal-emulator 
x-terminal-emulator 
lxterminal 
pkexec leafpad /bin/rebod 
thunar
git checkout debian
rm -rf ../rebod
sudo rebod dist
mksquashfs
sudo apt install squashfs-tools
rm -rf ../rebod
sudo rm -rf ../rebod
sudo rebod dist
sudo apt install geniso
sudo apt install genisoimage 
sudo apt install --reinstall pkexec
groups
sudo -i /etc/rebod.conf 
sudo -i geany /etc/rebod.conf 
ls /boot
sudo -i geany /bin/rebod 
sudo apt install genisoimage
sudo apt install -reinstall policykit-1
sudo apt install --reinstall policykit-1
cat /etc/pam.d/common-auth
