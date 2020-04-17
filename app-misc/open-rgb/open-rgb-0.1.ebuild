EAPI=7

inherit qmake-utils linux-info git-r3 xdg-utils

DESCRIPTION="Open source RGB lighting control"
HOMEPAGE="https://gitlab.com/CalcProgrammer1/OpenRGB"
SRC_URI=""
EGIT_COMMIT="release_$PV"
EGIT_REPO_URI="https://gitlab.com/CalcProgrammer1/OpenRGB.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND="
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	virtual/libusb:1"
RDEPEND="${DEPEND}"

DOCS=( README.md )

CONFIG_CHECK="I2C I2C_I801"

src_configure() {
	eqmake5 OpenRGB.pro
}

src_install() {
	dobin OpenRGB
}

pkg_postinst() {
	xdg_icon_cache_update
}

pkg_postrm() {
	xdg_icon_cache_update
}
