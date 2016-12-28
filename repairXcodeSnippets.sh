#!/bin/sh
#Bc.wh1te_Le1 
pid=`ps -ef|grep "Xcode.app/Contents/MacOS/Xcode"|grep -v grep|grep -v PPID|awk '{ print $2}'`

if [[ -z $pid ]] ; then
  echo "******xcode关闭成功******\n"
  echo "******开始删除DriveData******"

#  	find ~/Library/Developer/Xcode/DerivedData/* -exec rm -fr {} \;
  rm -fr ~/Library/Developer/Xcode/DerivedData/*;
  	if [ $? -eq 0 ];then
#		find ~/Library/Caches/com.apple.dt.Xcode -exec rm -fr {} \;
    rm -fr ~/Library/Caches/com.apple.dt.Xcode
			if [ $? -eq 0 ];then
				echo "******操作成功请重新打开Xcode******"
			else
				echo "******操作失败请重新执行脚本*******"
			fi
	else
		echo "******操作失败请重新执行脚本*******"
	fi
else
  echo "******请关闭xcode再执行此脚本******"
  echo $pid

fi
