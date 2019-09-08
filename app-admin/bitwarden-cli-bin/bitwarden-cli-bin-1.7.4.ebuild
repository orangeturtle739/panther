# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Bitwarden CLI"
HOMEPAGE="https://bitwarden.com/"
SRC_URI="https://github.com/bitwarden/cli/releases/download/v${PV}/bw-linux-${PV}.zip"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="strip"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}"

src_install() {
	dobin bw
}
