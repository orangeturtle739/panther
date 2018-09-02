EAPI=5

inherit cmake-utils git-r3 linux-info

DESCRIPTION="RGB Driver for Linux and macOS"
HOMEPAGE="https://github.com/ckb-next/ckb-next"
SRC_URI=""
EGIT_REPO_URI="https://github.com/ckb-next/ckb-next"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-libs/quazip
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtnetwork:5
	dev-qt/qtwidgets:5
	!!app-misc/ckb"
RDEPEND="${DEPEND}"

DOCS=( README.md )

CONFIG_CHECK="INPUT_UINPUT"

src_prepare() {
	epatch "${FILESDIR}/udev-dest.patch"
}
