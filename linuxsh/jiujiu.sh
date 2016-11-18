#!/bin/sh
for i in 1 2 3 4 5 6 7 8 9
do
	for j in 1 2 3 4 5 6 7 8 9
	do
	#	if  (test $j -le $i)
		if [ $j -le $i ];
		then
			echo -ne "$i*$j="`expr $i \* $j`"\t"
		else
			echo
			break
		fi
	done
done
echo \
