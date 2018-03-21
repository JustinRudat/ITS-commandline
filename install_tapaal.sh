#!/bin/bash


case "$1" in
win)
	tmp="http://www.tapaal.net/fileadmin/download/tapaal-3.4/tapaal-3.4.0-win64.zip";
	term=".zip";;
lin)
	tmp="http://www.tapaal.net/fileadmin/download/tapaal-3.4/tapaal-3.4.0-linux64.zip";
	term=".zip";;
mac)
	tmp="http://www.tapaal.net/fileadmin/download/tapaal-3.4/tapaal-3.4.0-mac64.dmg";
	term=".dmg";;
*)
	echo "Specify the OS with win, mac or lin"; exit 1;;	
esac

subtmp=${tmp:52}

wget $tmp

#les binaires sont deja compiler
unzip $subtmp

rm $subtmp

namedir=${subtmp%$term}
