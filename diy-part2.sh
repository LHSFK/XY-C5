#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# Modify default theme
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon

# Modify hostname
sed -i 's/OpenWrt/iStoreOS/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/iStoreOS/g' package/base-files/files/etc/init.d/system

curl -o  package/base-files/files/etc/banner  https://raw.githubusercontent.com/istoreos/istoreos/refs/heads/istoreos-22.03/package/base-files/files/etc/banner
