#!/bin/bash
for ((i=1;i<=30;i++))
do
	if ((i < 10))
	
	then
		mkdir st0${i}niit	
	else
		mkdir st${i}niit
	fi
done
