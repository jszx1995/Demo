#name=(tom jin my test)
#for i in ${name[*]}
#do
#	echo $i
#done


#if [ 1 > 0 ]
#if test 1 > 0
if ((1 > 0))
then
#	 . ./test1.sh
	echo -n "string to output"
echo \n
	echo -e "string to output\c"
echo \n
	x=3
	echo x=`expr $x + 1`
	echo `date`
	set `date`
	echo month is $2
	shift
	echo date is $2
	foo="andy is zhuxiang"
	echo $foo
	unset foo
	echo $foo
fi
