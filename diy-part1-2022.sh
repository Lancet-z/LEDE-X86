# 科学插件
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git' >>feeds.conf.default
#添加驱动
cd ./package/kernel
git clone https://github.com/goldkeyber112/openwrt-r8168.git
