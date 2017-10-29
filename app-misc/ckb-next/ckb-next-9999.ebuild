# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit qmake-utils systemd git-r3

DESCRIPTION="RGB Driver for Linux and macOS"
HOMEPAGE="https://github.com/mattanger/ckb-next"
SRC_URI=""
EGIT_REPO_URI="https://github.com/mattanger/ckb-next"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-libs/quazip[qt5]
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtnetwork:5
	dev-qt/qtwidgets:5"
RDEPEND="${DEPEND}"

DOCS=( README.md BUILD.md DAEMON.md )

src_prepare() {
	epatch "${FILESDIR}/openrc.patch"
}

src_configure() {
	eqmake5
}

src_install() {
	dobin bin/ckb bin/ckb-daemon
	dodir /usr/lib/ckb-animations
	exeinto /usr/lib/ckb-animations
	doexe bin/ckb-animations/*

	newinitd service/openrc/ckb-daemon ckb-daemon
	domenu usr/ckb.desktop
	doicon usr/ckb.png
	systemd_dounit service/systemd/ckb-daemon.service
}
