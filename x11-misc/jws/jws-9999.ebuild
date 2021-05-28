# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake git-r3

DESCRIPTION="A wallpaper setter for minimalist window managers"
HOMEPAGE="https://github.com/jwaataja/JWS"
EGIT_REPO_URI="https://github.com/jwaataja/JWS.git"
EGIT_BRANCH="develop"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-libs/glib:2
"
DEPEND="${RDEPEND}"
BDEPEND=""
