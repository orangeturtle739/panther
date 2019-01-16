EAPI=5

inherit git-r3

DESCRIPTION="GNU toolchain for RISC-V, including GCC"
HOMEPAGE="https://github.com/riscv/riscv-gnu-toolchain"
SRC_URI=""
EGIT_REPO_URI="https://github.com/riscv/riscv-gnu-toolchain"
EGIT_CLONE_TYPE="shallow"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="riscv-arch riscv-abi"

DEPEND="sys-devel/autoconf
	sys-devel/automake
	dev-libs/mpc
	net-misc/curl
	dev-libs/mpfr
	dev-libs/gmp
	sys-apps/gawk
	sys-devel/bison
	sys-devel/flex
	sys-apps/texinfo
	dev-util/gperf
	sys-devel/libtool
	dev-util/patchutils
	sys-devel/bc
	sys-libs/zlib
	dev-libs/expat"
RDEPEND=""

RESTRICT="strip"

src_configure() {
	econf --prefix="$T/install/opt/riscv" --with-arch=rv64im --with-abi=lp64
}

src_install() {
	cp -a "$T/install/opt" "$D/"
}
