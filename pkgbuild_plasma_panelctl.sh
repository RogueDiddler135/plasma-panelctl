# PKGBUILD template for "plasma-panelctl"
# Replace fields below (pkgver, url, license, source, sha256sums, etc.)
# Save this file in a directory named "plasma-panelctl" alongside your source files

pkgname=plasma-panelctl
pkgver=0.1.0
pkgrel=1
pkgdesc="CLI/utility to toggle KDE Plasma panel visibility/state"
arch=('x86_64')
url="https://example.com/plasma-panelctl"
license=('MIT')
# runtime dependencies - adjust as needed
depends=('kde-cli-tools' 'plasma-workspace')
# build-time deps if your project needs compiling (e.g., gcc, cmake)
makedepends=('gcc')

# If you're packaging a single script/binary shipped with the PKGBUILD, use source=("myprogram.sh")
# If packaging from a git repository, use something like: source=("git+https://...#branch=main")
# Example: source=("plasma-panelctl-0.1.0.tar.gz")
source=("plasma-panelctl-${pkgver}.tar.gz")
# If source is local or you don't want to check sums, set sha256sums=('SKIP')
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
