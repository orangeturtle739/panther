# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit cmake-utils linux-info

DESCRIPTION="RGB Driver for Linux and macOS"
HOMEPAGE="https://github.com/ckb-next/ckb-next"
SRC_URI="https://github.com/ckb-next/ckb-next/archive/v$PV.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND="dev-libs/quazip[qt5]
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

