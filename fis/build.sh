#!/bin/bash
echo "build start"
rm -rf output
MOD_NAME="topic"
TAR="$MOD_NAME.tar.gz"
STATIC_TAR="static-$MOD_NAME.tar.gz"

#插件路径
if [ $# -gt 0 ] ; then
    #系统级别
    export PATH=/home/fis/npm/bin:$PATH
else
    #个人路径配置
    export PATH=~/.npm/lib/node_modules:$PATH
fi

## 编译单个模块
function build_modules () {
	echo "$1";
	fisp --version --no-color
	if [ $2 != "local" ] ; then
        fisp release -cumopD -r $1 -d $2
    else
        fisp release -cumopD -r $1 -d local
    fi
}

#编译module.conf指定模块
for m in `cat ./module.conf`; do
    if [[ "$m" != "#"* ]]; then
		if [ $# -gt 0 ] ; then
			build_modules $m ${1#-}
		else
			build_modules $m local
		fi
    fi
done

cd output
tar zcvf $TAR ./browse_template_v3
tar zcvf $STATIC_TAR ./browse_static
rm -rf browse_template_v3 browse_static
cd ..

# 生成 xss.php
mkdir -p output/config
node ./tools/generate_xss.js > ./output/config/xss.php

echo "build end"