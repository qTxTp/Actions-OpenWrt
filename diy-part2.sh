#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.25.54/g' package/base-files/files/bin/config_generate

# Upgrade qBittorrent to the latest available version
sed -i '4c PKG_VERSION:=4.3.2' package/lean/qBittorrent/Makefile
sed -i '9c PKG_HASH:=37d49b70ba5319c3dc208f22a503671e21b1212b8099b8bfff1ca570fed32360' package/lean/qBittorrent/Makefile

# Upgrade rblibtorrent to the latest available version
sed -i '4c PKG_VERSION:=1.2.12' package/lean/rblibtorrent/Makefile
sed -i '10c PKG_SOURCE_VERSION:=77cdef11e4ad5f2ae888ba358320cca079cad888' package/lean/rblibtorrent/Makefile
