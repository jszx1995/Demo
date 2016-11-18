#!/bin/bash

for((i=1;i<=50;i++))    
do
	#mkdir user$i;
	rmdir user$i;
	chmod 754 user$i;
done
