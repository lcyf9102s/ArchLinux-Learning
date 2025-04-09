#` Maintainer: Maximilian Luz <luzmaximilian@gmail.com>
#` Based on official Arch Linux PKGBUILD

pkgname=libwacom-surface
pkgver=2.15.0
pkgrel=1
pkgdesc="Library to identify Wacom tablets and their features - Patched for Microsoft Surface devices"
arch=('x86_64')
url="https://github.com/linux-surface/libwacom"
license=('MIT')
depends=('glib2' 'libevdev' 'libgudev' 'glibc')
makedepends=('libxml2' 'meson')
checkdepends=('python-pytest' 'python-libevdev' 'python-pyudev')
optdepends=('python-libevdev: for libwacom-show-stylus'
            'python-pyudev: for libwacom-show-stylus')
validpgpkeys=(
    '594ABBA066118C7A02D10A80A8AF906D9307FBAD'  # "Joshua Dickens <Joshua@Joshua-Dickens.com>"
    '3C2C43D9447D5938EF4551EBE23B7E70B467F0BF'  # "Peter Hutterer (Who-T) <office@who-t.net>"
)
conflicts=('libwacom')
provides=("libwacom=${pkgver}")

source=(
    "https://github.com/linuxwacom/libwacom/releases/download/libwacom-${pkgver}/libwacom-${pkgver}.tar.xz"{,.sig}
    "0001-Add-support-for-BUS_VIRTUAL.patch"
    "0002-Add-support-for-Intel-Management-Engine-bus.patch"
    "0003-data-Add-Microsoft-Surface-Pro-3.patch"
    "0004-data-Add-Microsoft-Surface-Pro-4.patch"
    "0005-data-Add-Microsoft-Surface-Pro-5.patch"
    "0006-data-Add-Microsoft-Surface-Pro-6.patch"
    "0007-data-Add-Microsoft-Surface-Pro-7.patch"
    "0008-data-Add-Microsoft-Surface-Pro-7.patch"
    "0009-data-Add-Microsoft-Surface-Pro-8.patch"
    "0010-data-Add-Microsoft-Surface-Pro-9.patch"
    "0011-data-Add-Microsoft-Surface-Book.patch"
    "0012-data-Add-Microsoft-Surface-Book-2-13.5.patch"
    "0013-data-Add-Microsoft-Surface-Book-2-15.patch"
    "0014-data-Add-Microsoft-Surface-Book-3-13.5.patch"
    "0015-data-Add-Microsoft-Surface-Book-3-15.patch"
    "0016-data-Add-Microsoft-Surface-Laptop-Studio.patch"
)
sha256sums=('20cd65b1693129c3a6c003db0fe7fff7eccaf19fb04e89aaad9c20eb2151515a'
            'SKIP'
            '696164b851014a204cb42dcee0b04e98680df4154494454aed499e1928811668'
            'd7ba3b1fa5d29d3905be5bc6b70bb351afebd1343b57ca8b213af1279b7ded49'
            'cf8051976e8c2a52484cb66e9aba57dffef234931d879bd33704b9012656b517'
            'f8b1dbff6cd13e7da6bfa5dc6b009f19588c8fccaff1d262960b0345604ecc9a'
            '13bbaafb309cd900e8d9292955075521390849933fd6d8481ea34ac9b992f909'
            '09d92bec44dadf9655d881dbb0c71edd32c5a897c40bd9edf13314c5c8ac46d2'
            '29a7da851ea01ea1ff5403318a40c4da5f8ab842cbffa221891a2d68f17d5ee7'
            '6360efe22f06676396adccdf48ed66349aa47a595bebcfab4a8ff04eee8537bf'
            '93b04852ad3e1441e1c49541227c188d1dbf23ebeab94ba26d36e29818b0cf59'
            '46cf653beb245639cc7044a5c03a1a654d5072d8ab6d9d1aebe9810fdc2f2393'
            'a32dcf496234bbb960f519cfa49127bdb15de9d3aa965c40e4ec9ea561d55eb1'
            '0b14ea69e7038169d309618a5767bfc2de2b5895e1bcc8ec4c4b606466835524'
            '5787ed06c0c0c5b099666927b232fc4299bd9589c3971f3affb00b982356753a'
            'df9a4d9cb980dff8644e8e5070e396079397fac4a941cdbf5417742842f9c7f1'
            '6baf29f63a1d7366ee6b9a8ca11359eb57cac9fcaf276caa3e7ac9e29fcbefce'
            '77afbd2151461fb0a4e3353a3c7e3af7ec37dbdaf0edd519d69e1894ccecaa0d')

prepare() {
    cd "libwacom-${pkgver}"

    for p in "${srcdir}/"*.patch ; do
        patch -Np1 -i "${p}" || true
    done
}

build() {
    rm -rf build

    arch-meson libwacom-$pkgver build
    meson compile -C build
}

check() {
    # disabled for now...
    # meson test -C build --print-errorlogs
    true
}

package() {
    meson install -C build --destdir "$pkgdir"
    install -D -m644 libwacom-$pkgver/COPYING "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
}