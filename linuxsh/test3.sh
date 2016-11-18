#!bin/bash
function menu(){
	echo "请从下面的菜单中做选择"
	echo 
	echo "1将文档恢复到$1"
	echo "2后备$1"
	echo "3转储$1"
}

function choice(){
	echo -e "输入你的选择：\c"
	read CHOICE
	case "$CHOICE" in
		1) echo "恢复……"
			touch test;;
		2) echo "存档……"
			ls -a;;
		3) echo "转储……"
			uname -a;;
		*) echo "对不起！$CHOICE 选择不合法。"
	esac
}

function checkerr(){
	if (($?!=0));then
		echo "处理过程出现问题。"
		if (($CHOICE==3));
		then
			echo "该目录不能被清除。"
		fi
		echo "请查看设备，再试一次。"
		exit 2
	elif(($CHOICE==3));
	then
		rm *
	fi
}

echo "欢迎使用交互式归档程序"
echo "输入你的选择：Y或y表示进入系统，其他表示不进入。"
read ANSWER
while [ $ANSWER = "Y" -o $ANSWER = "y" ]
do
	echo
	echo -e "请输入你要归档的目录？\c"
	read DIR
	if [ ! -d $DIR ];
	then
		echo "对不起！你输入的不是目录。"
		exit 1
	fi
	cd $DIR
	menu $DIR
	choice
	checkerr
	echo -e "你想再选一次吗？\c"
	read ANSWER
done
