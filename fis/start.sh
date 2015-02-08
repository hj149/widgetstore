#!/bin/bash

if [ $1 = "-all" ];then
	fisp server init 
	fisp release -r common -p
	fisp release -r topic  -p
	fisp server start -p 8090
fi


if [ $1 = "-init" ];then
	fisp server init 
fi
if [ $1 = "-t" ];then
	## 加上 -p 参数 是进行打包 
	fisp release -r  common -p 
	fisp release -r  topic  -p
fi
if [ $1 = "-p" ];then
	fisp server start -p 8090
fi

if [ $1 = "-cp" ];then
	cd ./common/
	fisp release -cuopm -d remote

	cd ../topic/
	fisp release -cuopm -d remote
	
	cd ../
fi

if [ $1 = "-topic" ];then
	cd ./topic/
	fisp release -cuopm -d remote
	cd ../
fi

