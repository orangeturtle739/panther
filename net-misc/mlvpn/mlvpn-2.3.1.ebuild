EAPI="5"

SRC_URI="https://github.com/zehome/MLVPN/releases/download/2.3.1/$P.tar.gz"
KEYWORDS="~amd64 ~x86"

inherit autotools

DESCRIPTION="Multilink VPN"
HOMEPAGE="https://github.com/zehome/MLVPN/"

LICENSE="BSD"
SLOT="0"
IUSE=""
DEPEND="dev-libs/libev
	dev-libs/libsodium
	net-libs/libpcap"

src_prepare() {
	eautoreconf --force --install
}
