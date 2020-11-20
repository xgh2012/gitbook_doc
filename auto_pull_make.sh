#!/bin/bash
#根据git版本号，进行比较自动执行编译脚本
cd /opt/books/code/
dir=$(ls -l |awk '/^d/ {print $NF}')
for name in $dir
do	
	cd $name
  
	old_version=`cat version.file | sort -rV | head -n 1`
	new_version=$old_version

	# 执行git命令
	git pull origin master
	 
	for var in `git rev-parse HEAD`; 
	do 
		new_version=$var
		echo $var > version.file  
	done

	if [ "$new_version"x != "$old_version"x ] ;then		
		gitbook install;
		gitbook build . /opt/books/html/$name;
		echo $name " rebuild,git_log version:" $new_version;
	fi
	cd ..
done 