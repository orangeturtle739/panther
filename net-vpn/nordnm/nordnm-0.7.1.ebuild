# Copyright 2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5,6,7} )
inherit distutils-r1

DESCRIPTION="A CLI tool for NordVPN"
HOMEPAGE="https://github.com/Chadsr/NordVPN-NetworkManager"
SRC_URI="https://github.com/Chadsr/NordVPN-NetworkManager/archive/${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/NordVPN-NetworkManager-${PV}/"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="amd64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
