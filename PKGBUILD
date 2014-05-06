# Maintainer: Jan de Groot <jgc@archlinux.org>
# Maintainer: JIN Xiao-Yong <jinxiaoyong@gmail.com>
# Maintainer: bohoomil <@zoho.com>

# Installation order: freetype2-iu, fontconfig-iu, cairo-iu
pkgname=freetype2-infinality-ultimate-git
pkgver=1
pkgrel=1
pkgdesc="TrueType font rendering library with Infinality patches and custom settings by bohoomil (infinality-bundle)."
arch=(i686 x86_64)
license=('GPL' 'MIT')
groups=('infinality-bundle')
url="http://freetype.sourceforge.net"
depends=('zlib' 'bzip2' 'sh' 'xorg-xrdb' 'libpng' 'harfbuzz')
conflicts=('freetype2' 'freetype2-infinality' 'freetype2-iinfinality-ultimate')
provides=("freetype2=$pkgver" 'freetype2-infinality' 'freetype2-infinality-ultimate')
install='infinality.install'
backup=('etc/profile.d/infinality-settings.sh')
source=(git://git.sv.gnu.org/freetype/freetype2.git
        freetype-2.5.3-enable-valid.patch
        infinality-2.5.3-git.patch
        infinality-settings.sh)

pkgver() {
  local _tag _count

  cd "${srcdir}/freetype2"
  _tag=$(git describe --abbrev=0 )
  _count=$(git rev-list --count ${_tag}..HEAD)
  _tag=${_tag#VER-}
  echo ${_tag//-/.}+$_count+g$(git rev-parse --short HEAD)
}

prepare() {
  cd "${srcdir}"/freetype2

  patches=(freetype-2.5.3-enable-valid.patch
           infinality-2.5.3-git.patch)

  # infinality & post release fixes
  for patch in "${patches[@]}"; do
    patch -Np1 -i ${srcdir}/${patch}
  done
}

build() {
  cd "${srcdir}"/freetype2

  ./autogen.sh
  ./configure --prefix=/usr --disable-static
  make
}

check() {
  cd "${srcdir}"/freetype2
  make -k check
}

package() {
  cd "${srcdir}"/freetype2

  make DESTDIR="${pkgdir}" install
  install -D -T "${srcdir}/infinality-settings.sh" "${pkgdir}/etc/profile.d/infinality-settings.sh"
}

sha1sums=('SKIP'
          'abf7a8f726ad6359533651a8942636880febf9f6'
          'cff259cd69dba17e4b284619cf8f0adccd6af0ed'
          '8c15e24f37a3c0f74e5f901190247dc566cac79b')
