# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake xdg-utils git-r3

DESCRIPTION="Lightweight VTE terminal emulator with colorscheme support (fork of tinyterm)"
HOMEPAGE="https://github.com/laelath/miniterm"
EGIT_REPO_URI="https://github.com/laelath/miniterm.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-libs/glib:2
	x11-libs/gtk+:3
	x11-libs/vte:2.91=
"
DEPEND="${RDEPEND}"
BDEPEND=""

pkg_postinst() {
	xdg_desktop_database_update
	xdg_icon_cache_update
}

pkg_postrm() {
	xdg_desktop_database_update
	xdg_icon_cache_update
}
