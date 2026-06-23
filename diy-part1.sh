#!/bin/bash
# 进入源码目录
cd openwrt

# 替换国内下载源（中科大，解决github超时）
sed -i 's/https:\/\/github.com/https:\/\/mirror.ghproxy.com\/https:\/\/github.com/g' feeds.conf.default

# 示例：拉取额外插件仓库
# git clone https://github.com/kenzok8/small-package package/small-package

# 修改内核版本（示例强制6.18）
# sed -i 's/CONFIG_KERNEL_PATCHVER="6.6"/CONFIG_KERNEL_PATCHVER="6.18"/' .config
