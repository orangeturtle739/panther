# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="A command line paperport max to PDF file converter"
HOMEPAGE="https://github.com/orangeturtle739/paperman"
SRC_URI="https://github.com/orangeturtle739/paperman/archive/v$PV.tar.gz"
S="${WORKDIR}/paperman-$PV"

LICENSE=""
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE=""

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
