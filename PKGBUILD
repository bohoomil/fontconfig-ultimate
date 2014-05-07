# Maintainer: Jan de Groot <jgc@archlinux.org>
# Maintainer: bohoomil <bohoomil@zoho.com>

pkgname=fontconfig-infinality-ultimate-git
_basename=fontconfig
_gitname=fontconfig-ultimate
pkgdesc="A library for configuring and customizing font access (includes generic fontconfig package and ultimate settings by bohoomil)."
url=('http://www.fontconfig.org/release/')
license=('custom' 'CC-BY-SA')
pkgver=1
pkgrel=1
arch=('i686' 'x86_64')
groups=('infinality-bundle')
depends=('expat' 'freetype2-infinality-ultimate')
options=('!libtool')
provides=('fontconfig' 'fontconfig-infinality' 'fontconfig-infinality-ultimate')
conflicts=('fontconfig' 'fontconfig-infinality' 'fontconfig-infinality-git' 'fontconfig-infinality-ultimate')
backup=('etc/fonts/fonts.conf'
        'etc/fonts/conf.avail.infinality/combi/30-metric-aliases-combi.conf'
        'etc/fonts/conf.avail.infinality/combi/37-repl-global-combi.conf'
        'etc/fonts/conf.avail.infinality/combi/60-latin-combi.conf'
        'etc/fonts/conf.avail.infinality/combi/65-non-latin-combi.conf'
        'etc/fonts/conf.avail.infinality/combi/66-aliases-wine-combi.conf'
        'etc/fonts/conf.avail.infinality/35-repl-custom.conf'
        'etc/fonts/conf.avail.infinality/36-repl-missing-glyphs.conf')
install=fontconfig-iu.install
source=(git://anongit.freedesktop.org/fontconfig
        fontconfig-iu.tar.gz)

# a nice page to test font matching:
# http://zipcon.net/~swhite/docs/computers/browsers/fonttest.html

#version() {
#  cd $_gitname
#  git log -1 --format="%cd" --date=short | sed 's|-|.|g'
#}

pkgver() {
  local _tag _count

  cd "${srcdir}/fontconfig"
  _tag=$(git describe --abbrev=0 )
  _count=$(git rev-list --count ${_tag}..HEAD)
  _tag=${_tag#VER-}
  echo ${_tag//-/.}+$_count+g$(git rev-parse --short HEAD)
}


prepare() {

  patches=(00-fonts.conf.in.patch
           01-configure.patch
           02-configure.ac.patch
           03-Makefile.in.patch
           04-Makefile.conf.d.patch
           05-Makefile.am.in.patch)

  # copy fontconfig-ib patches & stuff
  cd "${srcdir}"/fontconfig-iu

  cp -r conf.d.infinality "${srcdir}/${_basename}"/conf.d.infinality
  cp -r *.patch "${srcdir}/${_basename}"

  # prepare src
  cd "${srcdir}"/fontconfig
  ./autogen.sh

  # infinality & post release fixes
  for patch in "${patches[@]}"; do
    patch -Np1 -i ${patch}
  done

  # make sure there's no rpath trouble and sane .so versioning -
  # FC and Gentoo do this as well
  aclocal
  libtoolize -f
  automake --add-missing -fi
}

build() {
  cd "${srcdir}"/fontconfig

  ./configure --prefix=/usr \
    --sysconfdir=/etc \
    --with-templatedir=/etc/fonts/conf.avail \
    --with-templateinfdir=/etc/fonts/conf.avail.infinality \
    --with-xmldir=/etc/fonts \
    --localstatedir=/var \
    --disable-static \
    --with-default-fonts=/usr/share/fonts \
    --with-add-fonts=/usr/share/fonts
  make
}

check() {
  cd "${srcdir}"/fontconfig
  make -k check
}

package() {
  cd "${srcdir}"/fontconfig
  make DESTDIR="${pkgdir}" install

  #Install license
  install -m755 -d "${pkgdir}"/usr/share/licenses/"${_basename}"
  install -m644 COPYING "${pkgdir}"/usr/share/licenses/"${_basename}"

  #install infinality stuff
  cd "${srcdir}"/fontconfig-iu

  # copy presets
  cp -r {combi,free,ms} \
    "${pkgdir}"/etc/fonts/conf.avail.infinality

  # install fc-presets
  install -m755 "fc-presets" "${pkgdir}"/usr/bin/"fc-presets"

  # copy documentation
  install -m755 -d "${pkgdir}"/usr/share/doc/"${pkgname}"
  cp -r doc "${pkgdir}"/usr/share/

  # install infinality-settings.sh
  install -m755 -d "${pkgdir}"/usr/share/doc/"${pkgname}"/freetype
  install -m755 freetype/infinality-settings.sh \
    "${pkgdir}"/usr/share/doc/"${pkgname}"/freetype/infinality-settings.sh

  find "${pkgdir}" -type d -name .git -exec rm -r '{}' +
}

sha1sums=('SKIP'
          '40c0dfe17ecc37d40c4fd3374be418ffe0aeaf1e')
