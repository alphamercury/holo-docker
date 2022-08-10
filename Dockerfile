FROM scratch as builder
ADD ./steamos /
ADD ./steamos/usr/share/factory /

# not removing libcroco holo-desync holo-keyring holo-pacman holo-pipewire holo-sudo holo-wireplumber elfutils
RUN pacman -R --noconfirm accounts-qml-module accountsservice adobe-source-code-pro-fonts adwaita-icon-theme alsa-card-profiles alsa-lib alsa-plugins alsa-topology-conf alsa-ucm-conf alsa-utils amd-ucode anthy aom appstream appstream-glib appstream-qt arch-install-scripts archlinux-appstream-data ark aspell aspell-en assimp atk atkmm at-spi2-atk at-spi2-core attica avahi baloo baloo-widgets bash-bats bash-completion bcc bluedevil bluez bluez-libs bluez-plugins bluez-qt bluez-utils bolt boost-libs bpftrace breeze breeze-grub breeze-gtk breeze-icons btop btrfs-progs bubblewrap cairo cairomm cantarell-fonts caps casync-git cdparanoia cfitsio cifs-utils clang clang-libs compiler-rt convertlit cpio cpupower crda dav1d dbus-glib dbus-python dconf desktop-file-utils desync-git discount discover dkms dmidecode dmraid dnssec-anchors dolphin dos2unix dosfstools double-conversion dracut drkonqi drm_info-git ebook-tools editorconfig-core-c efibootmgr efivar ell enchant evtest exfat-utils exiv2 f3 fatresize fd ffmpeg fish flac flatpak fontconfig frameworkintegration freerdp freetype2 fribidi fuse2 fuse3 fuse-common gamemode gamescope gcab gdb gdb-common gdk-pixbuf2 geoclue geocode-glib giflib git glew glfw-x11 glibmm glib-networking glslang glu gobject-introspection-runtime gpm gptfdisk gpu-trace graphene graphite grub gsettings-desktop-schemas gsm gst-plugins-base gst-plugins-base-libs gstreamer gtk3 gtkmm3 gtk-update-icon-cache gwenview harfbuzz hicolor-icon-theme hidapi htop hunspell ibus ibus-anthy ibus-hangul ibus-pinyin ibus-table ibus-table-cangjie-lite iniparser iotop iso-codes iw iwd jansson jasper jq js78 json-glib jupiter-dock-updater-bin jupiter-fan-control jupiter-hw-support jupiter-legacy-support kaccounts-integration kactivities kactivities-stats kactivitymanagerd karchive kauth kbookmarks kcmutils kcodecs kcolorpicker kcompletion kconfig kconfigwidgets kcoreaddons kcrash kdbusaddons kdeclarative kde-cli-tools kdecoration kded kde-gtk-config kdelibs4support kdeplasma-addons kdesu kdnssd kdsoap kdsoap-ws-discovery-client kemoticons kfilemetadata kgamma5 kglobalaccel kguiaddons kholidays khotkeys ki18n kiconthemes kidletime kimageannotator kinfocenter kio kio-extras kio-fuse kirigami2 kitemmodels kitemviews kitty-terminfo kjobwidgets kmenuedit knewstuff knotifications knotifyconfig konsole kpackage kparts kpeople kpmcore kpty kquickcharts krunner kscreen kscreenlocker kservice ksshaskpass ksystemstats ktexteditor ktextwidgets kunitconversion kuserfeedback kwallet kwallet-pam kwayland kwayland-integration kwayland-server kwidgetsaddons kwin kwindowsystem kwrite kwrited kxmlgui lame layer-shell-qt lcms2 ldb ldns lib32-alsa-lib lib32-alsa-plugins lib32-brotli lib32-bzip2 lib32-curl lib32-dbus lib32-e2fsprogs lib32-expat lib32-flac lib32-fontconfig lib32-freetype2 lib32-gamemode lib32-gcc-libs lib32-glib2 lib32-glibc lib32-harfbuzz lib32-icu lib32-keyutils lib32-krb5 lib32-libasyncns lib32-libcap lib32-libdrm lib32-libelf lib32-libffi lib32-libgcrypt lib32-libglvnd lib32-libgpg-error lib32-libice lib32-libidn2 lib32-libldap lib32-libogg lib32-libpciaccess lib32-libpng lib32-libpsl lib32-libpulse lib32-libsm lib32-libsndfile lib32-libssh2 lib32-libtasn1 lib32-libtirpc lib32-libunistring lib32-libunwind lib32-libva lib32-libva-mesa-driver lib32-libvdpau lib32-libvorbis lib32-libx11 lib32-libxau lib32-libxcb lib32-libxcrypt lib32-libxdamage lib32-libxdmcp lib32-libxext lib32-libxfixes lib32-libxi lib32-libxml2 lib32-libxshmfence lib32-libxss lib32-libxtst lib32-libxxf86vm lib32-llvm-libs lib32-lm_sensors lib32-mangohud lib32-mesa lib32-mesa-vdpau lib32-ncurses lib32-nspr lib32-nss lib32-openal lib32-openssl lib32-opus lib32-p11-kit lib32-pam lib32-pcre lib32-pipewire lib32-readline lib32-sqlite lib32-systemd lib32-util-linux lib32-vulkan-icd-loader lib32-vulkan-radeon lib32-wayland lib32-xz lib32-zlib lib32-zstd libaccounts-glib libaccounts-qt libaio libass libasyncns libatasmart libavc1394 libblockdev libbluray libbsd libbytesize libcanberra libclc libcloudproviders libcolord libcups libdaemon libdatrie libdbusmenu-qt5 libdmtx libdrm libedit libepoxy libevdev libfdk-aac libfontenc libfreeaptx libglvnd libgssglue libgudev libhangul libibus libical libice libiec61883 libimobiledevice libinih libinput libjpeg-turbo libkdcraw libkipi libkscreen libksysguard libldac libmbim libmd libmfx libmm-glib libmodplug libmtp libndp libnewt libnm libnotify libnsl libogg libomxil-bellagio libpciaccess libpgm libpipeline libplist libpng libproxy libpulse libqaccessibilityclient libqalculate libqmi libqrtr-glib libraw libraw1394 librsvg libsamplerate libsigc++ libsm libsndfile libsodium libsoup libsoup3 libsoxr libssh libstemmer libteam libthai libtheora libtiff libtommath libtraceevent libtracefs libunwind liburcu libusb libusbmuxd libutempter libva libva-intel-driver libva-mesa-driver libvdpau libvisual libvorbis libvpx libwacom libwebp libx11 libxau libxaw libxcb libxcomposite libxcursor libxcvt libxdamage libxdmcp libxext libxfixes libxfont2 libxft libxi libxinerama libxkbcommon libxkbcommon-x11 libxkbfile libxmlb libxmu libxpm libxrandr libxrender libxres libxshmfence libxslt libxss libxt libxtst libxv libxxf86vm libyaml libzip lilv linux-firmware-neptune linux-neptune llvm-libs lmdb lm_sensors lsb-release l-smash lsof lua luit lv2 lvm2 lzo maliit-framework maliit-keyboard man-db mangohud md4c mdadm media-player-info mesa mesa-utils mesa-vdpau milou minizip mobile-broadband-provider-info modemmanager modemmanager-qt mtdev nano ndctl nethogs networkmanager networkmanager-qt noise-suppression-for-voice-git noto-fonts noto-fonts-cjk nspr nss ntfs-3g ntp numactl nvme-cli ocl-icd oniguruma openal opencl-mesa opencore-amr openjpeg2 openssh openvpn opus orc ostree oxygen p7zip pacman-system-update pango pangomm parted partitionmanager pavucontrol pcsclite perf perl-error perl-mailtools perl-timedate phonon-qt5 phonon-qt5-gstreamer pipewire pipewire-alsa pipewire-jack pipewire-pulse pixman pkcs11-helper plasma-browser-integration plasma-desktop plasma-disks plasma-firewall plasma-framework plasma-integration plasma-meta plasma-nm plasma-pa plasma-systemmonitor plasma-thunderbolt plasma-vault plasma-wayland-protocols plasma-wayland-session plasma-workspace plasma-workspace-wallpapers plymouth polkit polkit-kde-agent polkit-qt5 ponymix poppler poppler-qt5 powerdevil powertop ppp presage prison purpose python python-aiohttp python-aiosignal python-async-timeout python-attrs python-chardet python-charset-normalizer python-click python-crcmod python-dnspython python-evdev python-frozenlist python-gobject python-hid python-idna python-importlib-metadata python-markdown python-multidict python-progressbar python-psutil python-pyaml python-pyenchant python-semantic-version python-six python-systemd python-sysv_ipc python-typing_extensions python-utils python-yaml python-yarl python-zipp pyzy qca-qt5 qqc2-desktop-style qrencode qt5-base qt5-declarative qt5-feedback qt5-graphicaleffects qt5-location qt5-multimedia qt5-quickcontrols qt5-quickcontrols2 qt5-sensors qt5-speech qt5-svg qt5-tools qt5-translations qt5-wayland qt5-webchannel qt5-webengine qt5-x11extras rauc rav1e re2 rest ripgrep rsync rtkit rxvt-unicode-terminfo sbc sddm-kcm sddm-wayland sdl2 seatd serd shared-mime-info signond signon-kwallet-extension signon-plugin-oauth2 signon-ui slang smartmontools smbclient snappy socat solid sonnet sord sound-theme-freedesktop source-highlight spectacle speex speexdsp squashfs-tools sratom srt sshfs steamdeck-kde-presets steam-im-modules steam-jupiter-stable steamos-atomupd-client-git steamos-customizations-jupiter steamos-devkit-service steamos-efi steamos-netrc strace stressapptest svt-av1 syndication syntax-highlighting sysfsutils systemd-swap systemsettings taglib talloc tcl tdb tevent thin-provisioning-tools threadweaver tk trace-cmd tracker3 tree tslib ttf-dejavu ttf-hack ttf-twemoji-default udisks2 unrar unzip upower usbmuxd usbutils v4l-utils vid.stab vim vim-runtime vkmark-git vmaf volume_key vpower vulkan-icd-loader vulkan-radeon vulkan-tools wayland wayland-utils webrtc-audio-processing wget wireless-regdb wireless_tools wireplumber wpa_supplicant x264 x265 xbindkeys xbitmaps xcb-proto xcb-util xcb-util-cursor xcb-util-errors xcb-util-image xcb-util-keysyms xcb-util-renderutil xcb-util-wm xdg-dbus-proxy xdg-desktop-portal xdg-desktop-portal-kde xdg-user-dirs xdg-utils xdotool xf86-input-libinput xf86-video-amdgpu xfsprogs xkeyboard-config xorg-fonts-encodings xorgproto xorg-server xorg-server-common xorg-setxkbmap xorg-xauth xorg-xdpyinfo xorg-xhost xorg-xkbcomp xorg-xmessage xorg-xprop xorg-xrandr xorg-xrdb xorg-xset xorg-xsetroot xorg-xwayland-jupiter xorg-xwininfo xterm xvidcore xxhash yay-git zenity-light zeromq zimg zip zsh zxing-cpp \
 && pacman-key --init \
 && pacman-key --populate archlinux \
 && pacman-key --populate holo \
 && pacman -Sy \
 && comm -1 -2  <(pacman -Qeq | sort) <(pacman -Qoq /usr/include/ | sort) | pacman -S - \
 && comm -1 -2  <(pacman -Qdq | sort) <(pacman -Qoq /usr/include/ | sort) | sudo pacman -S --asdeps - \
 && pacman -S --noconfirm autoconf automake bison fakeroot flex m4 tpm2-tss \
 && yes | pacman -Scc

FROM scratch
COPY --from=builder / /