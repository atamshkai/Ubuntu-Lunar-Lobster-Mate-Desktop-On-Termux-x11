echo "Install needed packages"
sleep 2
pkg up -y && pkg i -y x11-repo && pkg i -y proot-distro pulseaudio termux-x11-nightly
cat <<EOF > ~/../usr/etc/proot-distro/lunar-mate.sh
DISTRO_NAME='Lunar Lobster (lunar mate)'
TARBALL_URL['aarch64']="https://archive.org/download/lunar-mate.tar/lunar-mate.tar.xz"
TARBALL_SHA256['aarch64']="a220121f0848707536fbdfa252157d31913584f9b64ac149fbd57e3d65eab7be"
EOF
echo "proot-distro login --user mate lunar-mate --shared-tmp --bind /dev/null:/proc/sys/kernal/cap_last_cap" >>~/../usr/bin/lunar-mate
chmod +x ~/../usr/bin/lunar-mate
proot-distro install lunar-mate
# add two lines for sudo 
echo "Set disable_coredump false" >>~/../usr/var/lib/proot-distro/installed-rootfs/lunar-mate/etc/sudo.conf
echo "chown root /usr/bin/sudo; chmod 4755 /usr/bin/sudo" >>~/../usr/var/lib/proot-distro/installed-rootfs/lunar-mate/etc/profile
