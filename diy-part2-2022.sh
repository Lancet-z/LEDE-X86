
# 修改openwrt登陆地址,把下面的192.168.2.2修改成你想要的就可以了
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

#修正连接数（by ベ七秒鱼ベ）
#sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/base-files/files/etc/sysctl.conf

#添加额外软件包
svn co https://github.com/Lancet-z/Just-for-fun/trunk/sgpublic/tools/ucl tools/ucl
svn co https://github.com/Lancet-z/Just-for-fun/trunk/sgpublic/tools/upx tools/upx
sed -i '/tools-y += ucl upx/d' tools/Makefile
sed -i '/# subdirectories to descend into/a\tools-y += ucl upx' tools/Makefile
sed -i "/\$(curdir)\/upx\/compile := \$(curdir)\/ucl\/compile/d" tools/Makefile
sed -i '/# builddir dependencies/a\$(curdir)/upx/compile := $(curdir)/ucl/compile' tools/Makefile
