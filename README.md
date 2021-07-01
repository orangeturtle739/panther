# Panther

A collection of [Gentoo](https://www.gentoo.org/) ebuilds which I couldn't find elsewhere.

## Contents

* **`app-admin`**
  * [`bitwarden-cli-bin`](https://github.com/bitwarden/cli): bitwarden CLI binary.
* **`app-crypt`**
  * `staticgpg`: from https://github.com/sakaki-/sakaki-tools
* **`app-misc`**
  * [`ckb-next`](https://github.com/mattanger/ckb-next): open-source driver for Corsair keyboards and mice.
  * [`open-rgb`](https://gitlab.com/CalcProgrammer1/OpenRGB): Open-source driver for RGB lighting on motherboards and other components.
* **`kde-misc`**
  * `krename`: a hacked version of `krename` which supports timestamps accurate to the millisecond, and UTC times.
* **`media-gfx`**
  * [`max2pdf`](https://github.com/orangeturtle739/max2pdf): a tool to convert paperport max files to PDF files.
* **`net-misc`**
  *  [`can-utils`](https://github.com/linux-can/can-utils): Linux-CAN / SocketCAN user space applications.
* **`net-vpn`**
  * [`net-vpn/mlvpn`](https://zehome.github.io/MLVPN/): Multi-link VPN (ADSL/SDSL/xDSL/Network aggregation / bonding).
* **`net-wireless`**
  * `broadcom-sta`: a patched driver for use with kernels >= 5.1.
* **`sci-electronics`**
  * [`quartus-prime-lite`](http://fpgasoftware.intel.com/?edition=lite): a quartus prime lite setup with included libfontconfig and libfreetype binaries.
  * [`verilator`](https://www.veripool.org/wiki/verilator): the fastest free Verilog HDL simulator.
* **`sys-devel`**
  * [`riscv-gnu-toolchain`](https://github.com/riscv/riscv-gnu-toolchain): the RISC-V GNU toolchain.

## Installation

### Layman

```sh
layman -a panther
```

### Manual

**`/etc/portage/repos.conf/panther.conf`:**
```ini
[panther]
priority = 50
location = /var/lib/layman/panther
layman-type = git
sync-type = laymansync
sync-uri = https://github.com/orangeturtle739/panther.git
auto-sync = Yes
```

### Selecting Specific Packages

To only install specific packages from this overlay, mask all of them, and then unmask specific packages.
Mask all packages in `/etc/portage/package.mask` by adding:
```
*/*::panther
```
Then unamsk the package you want (in this case `net-misc/can-utils`) in `/etc/portage/package.unmask` by adding:
```
net-misc/can-utils::panther
```
