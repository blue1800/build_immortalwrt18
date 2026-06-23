#!/bin/bash
# DIY 后置脚本：固定LAN 192.168.100.18 + root密码password + 原版ImmortalWrt Banner

# 1. 修改LAN后台IP为192.168.100.18
sed -i 's/option ipaddr '\''192.168.1.1'\''/option ipaddr '\''192.168.100.18'\''/' package/base-files/files/etc/config/network

# 2. 固化root密码 password 加密串
ROOT_PWD='$1$openwrt$O9o1O2w0n88qhWuiWdL50.'
sed -i "s/root::0:0:99999:7:::/root:${ROOT_PWD}:0:0:99999:7:::/" package/base-files/files/etc/shadow

# 3. 写入 ImmortalWrt 官方原版完整Banner
cat > package/base-files/files/etc/banner <<'EOF'
  ____                                 ____
 |    | _____  _____  _____  _____    |    |
 |    ||     ||     ||     ||     |   |    |
 |    ||_____||_____||_____||_____|   |    |
 |__________________________________________|
                  ImmortalWrt
 -----------------------------------------------------
  Custom DIY Firmware Build
  LAN IP:   192.168.100.18
  Account:  root
  Password: password
 -----------------------------------------------------
EOF
