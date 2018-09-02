EAPI=6

DESCRIPTION="A command line paperport max to PDF file converter"
HOMEPAGE="https://github.com/orangeturtle739/max2pdf"
SRC_URI="https://github.com/orangeturtle739/max2pdf/archive/v$PV.tar.gz"
S="${WORKDIR}/paperman-$PV"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtnetwork:5
	dev-qt/qtwidgets:5
	app-text/podofo
"
RDEPEND="${DEPEND}"

src_install() {
		dobin max2pdf
}
