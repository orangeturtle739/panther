EAPI=7

PYTHON_COMPAT=( python3_{5,6,7} )
inherit distutils-r1

DESCRIPTION="A CLI tool for NordVPN"
HOMEPAGE="https://github.com/Chadsr/NordVPN-NetworkManager"
SRC_URI="https://github.com/Chadsr/NordVPN-NetworkManager/archive/${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/NordVPN-NetworkManager-${PV}/"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	>=dev-python/numpy-1.11.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.9.0[${PYTHON_USEDEP}]
"

RDEPEND="
	${DEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
"
