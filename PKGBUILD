pkgname=texlive-eskdx-fix
pkgver=1.0
pkgrel=0
pkgdesc="Fix eskdx frames error on new versions of texlive."
arch=("any")
url="https://github.com/Lanik123/texlive-eskdx-fix/"
license=('MIT')
depends=('texlive-langcyrillic')
source=("00-fix_eskdx_frames.patch"
        "texlive-eskdx-fix.hook"
        "texlive-eskdx-fix.sh")
sha256sums=('6bdf9b88aaecc900917a3f78f61f4974ef661433f20007f43cf1764308137c0c'
            '656082729a29aeedb7660c0dd981d8331557521c56b85abed0f8da0d503b9ed6'
            '032a4e5b041f711b8a2dc77237e61885712370ad7d2c325e9c65088153e16327')
install="${pkgname}.install"

package() {
    install -Dm755 "00-fix_eskdx_frames.patch" "$pkgdir/usr/share/eskdx-fix/00-fix_eskdx_frames.patch"
    install -Dm755 "texlive-eskdx-fix.sh" "$pkgdir/usr/share/eskdx-fix/texlive-eskdx-fix.sh"
    install -Dm755 "texlive-eskdx-fix.hook" "$pkgdir/etc/pacman.d/hooks/texlive-eskdx-fix.hook"
}
