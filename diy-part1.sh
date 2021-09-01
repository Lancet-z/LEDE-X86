#!/bin/bash
#新的argon主题
rm -rf ./package/lean/luci-theme-argon
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git package/lean/luci-theme-infinityfreedom
# Add a feed source
#sed -i 's/PATCHVER:=5.10/PATCHVER:=5.4/g' target/linux/x86/Makefile
#sed -i '$a src-git lienol https://github.com/kenzok8/openwrt-packages.git' feeds.conf.default
# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git jerryk https://github.com/jerrykuku/openwrt-package' >>feeds.conf.default
#echo 'src-git liuran001_packages https://github.com/liuran001/openwrt-packages' >>feeds.conf.default
