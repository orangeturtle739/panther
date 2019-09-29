# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1 git-r3

DESCRIPTION="Intelligent archive extraction"
HOMEPAGE="https://github.com/moonpyk/dtrx"
SRC_URI=""
EGIT_REPO_URI="https://github.com/moonpyk/dtrx"
EGIT_COMMIT="54ccfd3196d365fc4c97712b562c63acff94be63"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="cab 7z +zip cpio +tar +gzip +bzip2 +lzma rpm installshield rar deb lha"

DEPEND=""
RDEPEND="cab? ( app-arch/cabextract )
	7z? ( app-arch/p7zip )
	zip? ( app-arch/unzip )
	tar? ( app-arch/tar )
	cpio? ( app-arch/cpio )
	gzip? ( app-arch/gzip )
	bzip2? ( app-arch/bzip2 )
	lha? ( app-arch/lha )
	lzma? ( app-arch/xz-utils )
	rar? ( app-arch/unrar )
	installshield? ( app-arch/unshield )
	rpm? ( app-arch/rpm app-arch/cpio )
	deb? ( sys-devel/binutils app-arch/tar app-arch/gzip )
"
BDEPEND=""

DOCS=( COPYING README INSTALL NEWS )
