#!/bin/bash

#添加password
#sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall.git' feeds.conf.default
#新的argon主题
rm -rf ./package/lean/luci-theme-argon && git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
# Add a feed source
sed -i 's/PATCHVER:=5.10/PATCHVER:=5.4/g' target/linux/x86/Makefile
#sed -i '$a src-git lienol https://github.com/kenzok8/openwrt-packages.git' feeds.conf.default
echo 'src-git helloworld https://github.com/fw876/helloworld'>>feeds.conf.default
./scripts/feeds update -a && ./scripts/feeds install -a

