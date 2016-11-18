#!/bin/bash

if test -f $1
then
	mv $1 $2
else
	echo "没有$1 文件！"
fi
