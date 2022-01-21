# 科学插件
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
echo 'src-git helloworld https://github.com/fw876/helloworld.git' >>feeds.conf.default
#添加驱动
cd ./package/kernel
git clone https://github.com/goldkeyber112/openwrt-r8168.git
