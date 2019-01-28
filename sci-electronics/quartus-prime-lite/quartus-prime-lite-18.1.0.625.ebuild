# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils

DESCRIPTION="Full-featured EDA product for altera devices"
HOMEPAGE="https://www.altera.com/products/design-software/fpga-design/quartus-prime/overview.html"
SRC_URI="Quartus-lite-${PV}-linux.tar"
# variable to store the download URLS
DOWNLOADPAGE="http://dl.altera.com/?edition=lite"

LICENSE="Quartus-prime-megacore"
SLOT="0"

KEYWORDS="~amd64"

RDEPEND="media-libs/libpng:1.2[abi_x86_32]
		x11-libs/libXft[abi_x86_32]
		app-arch/bzip2[abi_x86_32]
		sys-libs/zlib[abi_x86_32]
		sys-libs/glibc[multilib]
		media-libs/freetype[abi_x86_32]"

RESTRICT="fetch bindist"

S=${WORKDIR}

pkg_nofetch() {
	elog "Due to licensing restrictions, and old libary versions."
	elog "You need to download the distfiles manually."
	elog "-------------------------------------------------------"
	elog "For Quartus :"
	elog "Please navigate to ${DOWNLOADPAGE}"
	elog "Sign in with your Altera account (you need to register)"
	elog "Download Quartus-lite-${PV}-linux.tar  and place it into ${DISTDIR}"
	elog "-------------------------------------------------------"
	elog "For Freetype libary :"
	elog "Please download the following file :"
	elog "${DOWNLOADFT}"
	elog "Please place this into ${DISTDIR}"
	elog "-------------------------------------------------------"
	elog "And restart the installation."
}

pkg_pretend() {
	einfo "The checksum and unpack will take quite some time to run"
}

src_install() {
	einfo "The Quartus install runs in unattended mode"
	einfo "you wont see much and it will take a long time"

	./setup.sh --mode unattended --unattendedmodeui none --accept_eula 1 \
		--installdir "${D}/opt/quartus-lite-${PV}" || die
	make_desktop_entry "/opt/quartus-lite-${PV}/quartus/bin/quartus" \
		"Quartus lite ${PV}" "/opt/quartus-lite-${PV}/quartus/adm/quartusii.png"
	pushd "${D}"
	# Patch qenv to find extra 32bit libs
	epatch "${FILESDIR}/${P}-qenv-lib32.patch"
	# fix vso launcher for 32bit libs and linux kernel versions
	epatch "${FILESDIR}/${P}-vso-launcher.patch"
	dodir "opt/quartus-lite-${PV}/modelsim_ase/lib32"
	insinto "opt/quartus-lite-${PV}/modelsim_ase/lib32"
}

pkg_postinst() {
	elog "To launch Quartus, run /opt/quartus-lite-${PV}/quartus/bin/quartus"
}
