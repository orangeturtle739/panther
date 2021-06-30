EAPI=5

inherit cmake-utils linux-info

DESCRIPTION="RGB Driver for Linux and macOS"
HOMEPAGE="https://github.com/ckb-next/ckb-next"
SRC_URI="https://github.com/ckb-next/ckb-next/archive/v$PV.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND=">=dev-libs/quazip-1.0
        dev-qt/qtcore:5
        dev-qt/qtgui:5
        dev-qt/qtnetwork:5
        dev-qt/qtwidgets:5
        dev-libs/libdbusmenu-qt
        dev-qt/linguist-tools:5
        dev-python/PyQt5[x11extras]
        dev-qt/qt-docs:5[x11extras]
        x11-misc/xcb
        !!app-misc/ckb"
RDEPEND="${DEPEND}"

DOCS=( README.md )

CONFIG_CHECK="INPUT_UINPUT"


src_configure() {
        local mycmakeargs=(-DDISABLE_UPDATER=1)
        cmake-utils_src_configure
}
