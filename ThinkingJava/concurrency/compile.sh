#!/bin/sh 

if [ $# -eq 0 ]
then
	echo "you need add object file name, please "$#
else
	/usr/lib/jdk5/bin/javac *java 
	#echo Main-Class: `{$1}` > MAINFEST.MF
	echo Main-Class: $1 > MAINFEST.MF
	echo "create MAINFEST.MF done..."
	/usr/lib/jdk5/bin/jar -cvmf *.MF $1.jar *.class
	echo "create *.jar done..."
	/usr/lib/jdk5/bin/java -jar *.jar

fi
