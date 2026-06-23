#!/bin/bash
cd openwrt

# ghproxy 加速github下载，解决拉取插件超时
sed -i "s#https://github.com#https://mirror.ghproxy.com/https://github.com#g" feeds.conf.default

# 替换国内源码下载源（中科大）
sed -i 's#downloads.immortalwrt.org#mirrors.ustc.edu.cn/immortalwrt#g' feeds.conf.default

# 示例：拉取常用插件仓库，按需注释/开启
# git clone https://mirror.ghproxy.com/https://github.com/kenzok8/small-package package/small-package
# git clone https://mirror.ghproxy.com/https://github.com/lisaac/luci-app-dockerman package/luci-app-dockerman

# 强制修改内核版本示例（6.18）
# sed -i 's/CONFIG_KERNEL_PATCHVER="6.6"/CONFIG_KERNEL_PATCHVER="6.18"/' .config
