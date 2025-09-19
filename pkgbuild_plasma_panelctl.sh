pkgname=plasma-panelctl
pkgver=0.1.0
pkgrel=1
pkgdesc="CLI/utility to toggle KDE Plasma panel visibility/state"
arch=('x86_64')
url="https://example.com/plasma-panelctl"
license=('MIT')
depends=('kde-cli-tools' 'plasma-workspace')
makedepends=('gcc')

source=("plasma-panelctl-${pkgver}.tar.gz")
sha256sums=('SKIP')

prepare() {
  cd "${srcdir}/${pkgname}-${pkgver}"
  # apply patches or prepare build environment here, if needed
}

build() {
  cd "${srcdir}/${pkgname}-${pkgver}"
  # example for a simple C program using make
  # make
  # If your project is a script, nothing to build
  :
}

package() {
  cd "${srcdir}/${pkgname}-${pkgver}"

  # Install binary (adjust path to actual built binary or script)
  install -Dm755 "plasma-panelctl" "$pkgdir/usr/bin/plasma-panelctl"

  # Optional: install a desktop file if this provides a GUI or menu entry
  install -Dm644 "packaging/plasma-panelctl.desktop" "$pkgdir/usr/share/applications/plasma-panelctl.desktop"

  # Optional: install man page
  install -Dm644 "docs/plasma-panelctl.1" "$pkgdir/usr/share/man/man1/plasma-panelctl.1"

  # Optional: install bash completion
  install -Dm644 "completions/plasma-panelctl.bash" "$pkgdir/usr/share/bash-completion/completions/plasma-panelctl"
}

# vim: ts=2 sw=2 et
