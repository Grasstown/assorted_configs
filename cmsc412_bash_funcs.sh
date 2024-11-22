#!/usr/bin/env bash
IMAGES=geekos:latest

p412 () {
	GEEKOS_PATH="/home/poptart/CMSC412/geekos"
	case "$1" in
		"4")
			GEEKOS_PATH="/home/poptart/CMSC412/p4/geekos";;
		"5")
			GEEKOS_PATH="/home/poptart/CMSC412/p5/geekos";;
	esac

	cd $GEEKOS_PATH	
	
}

cpyimg() {
	case "$1" in
		"512")
			cp -n "/mnt/c/Users/kevin/Documents/CMSC412/gfs3-512k.img" "/home/poptart/CMSC412/p5/geekos/build/";;
		"5M")
			cp -n "/mnt/c/Users/kevin/Documents/gfs3-5M.img" "/home/poptart/CMSC412/p5/geekos/build/";;
		"10M") 
			cp -n "/mnt/c/Users/kevin/Documents/CMSC412/gfs3-10M-testprep.img" "/home/poptart/CMSC412/p5/geekos/build/";;
	esac
}

hdbig () {
	command hexdump -e '"%08_ax " 32/1 "%02x "' -e '" |" 32/1 "%_p" "|\n"' $1 | less
}
