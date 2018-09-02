EAPI="5"

if [[ ${PV} == "9999" ]] ; then
	EGIT_REPO_URI="https://github.com/linux-can/can-utils"
	vcs=git-2
else
	SRC_URI=""
	KEYWORDS="~amd64 ~x86"
fi

inherit $vcs autotools

DESCRIPTION="CAN Bus utilities."
HOMEPAGE="https://github.com/linux-can/can-utils"

LICENSE="GPL-2"
SLOT="0"
IUSE=""

src_prepare() {
	eautoreconf --force --install
}

#src_configure() {
#	econf $(use_enable btrfs) $(use_enable ext4) $(use_enable lvm) $(use_enable zypp) $(use_enable xattr xattrs) $(use_enable pam)
#}

src_compile() {
	emake || die "Compile failed."
}

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr install || die "Install failed."
}
