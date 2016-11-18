#!/bin/bash
#####################################################################################
#文件名为：test_mkdir.sh
#功能：创建andy,并在该目录下压缩一个以当前日期_用户名的压缩包
#作者：朱响
####################################################################################
DIRNAME=`ls ./ | grep andy`
if [ -z "$DIRNAME" ]
then
	mkdir ./andy ; cd andy
fi

YY=`date +%y` ; MM=`date +%m` ; DD=`date +%d`
BACKETC=$YY$MM${DD}_${USER}.tar.gz
tar zcvf $BACKETC ./
echo "压缩完成!"
exit 0
