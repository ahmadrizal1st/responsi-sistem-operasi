#!/bin/bash

clear
echo "RESPONSI SISTEM OPERASI"
echo "1. BAB 1: Perintah Dasar Linux"
echo "2. BAB 2: Sistem File"
echo "3. BAB 3: Konfigurasi Linux"
echo "4. BAB 4: Utilitas Linux"
echo "5. BAB 5: Proses Input Output"
echo "6. BAB 6: Manajemen Proses"
read -p "Pilih Menu: " pilihan

case $pilihan in
1)
	echo "1. whoami"
	echo "2. adduser"
	read -p "Pilih: " p1
	case $p1 in
	1)
		echo "User yang sedang login:"
		whoami
		;;
	2)
		read -p "Masukkan nama user baru: " user
		sudo adduser "$user"
		;;
	*)
		echo "Pilihan tidak valid"
		;;
	esac
	;;
2)
	echo "1. mkdir"
	echo "2. nano"
	read -p "Pilih: " p2
	case $p2 in
	1)
		read -p "Nama folder: " dir
		mkdir "$dir"
		echo "Folder $dir berhasil dibuat"
		;;
	2)
		read -p "Nama file: " file
		nano "$file"
		;;
	*)
		echo "Pilihan tidak valid"
		;;
	esac
	;;
3)
	echo "1. Edit issue"
	echo "2. Edit motd"
	read -p "Pilih: " p3
	case $p3 in
	1)
		sudo cp /etc/issue /etc/issue.backup
		sudo nano /etc/issue
		;;
	2)
		sudo cp /etc/motd /etc/motd.backup
		sudo nano /etc/motd
		;;
	*)
		echo "Pilihan tidak valid"
		;;
	esac
	;;
4)
	echo "1. gzip"
	echo "2. gunzip"
	read -p "Pilih: " p4
	case $p4 in
	1)
		read -p "Nama file: " f
		gzip "$f"
		;;
	2)
		read -p "Nama file .gz: " g
		gunzip "$g"
		;;
	*)
		echo "Pilihan tidak valid"
		;;
	esac
	;;
5)
	echo "1. cat"
	echo "2. ps"
	read -p "Pilih: " p5
	case $p5 in
	1)
		read -p "Nama file: " fc
		cat "$fc"
		;;
	2)
		ps
		;;
	*)
		echo "Pilihan tidak valid"
		;;
	esac
	;;
6)
	echo "1. ps -u"
	echo "2. ps -u user"
	read -p "Pilih: " p6
	case $p6 in
	1)
		ps -u
		;;
	2)
		read -p "Nama user: " u
		ps -u "$u"
		;;
	*)
		echo "Pilihan tidak valid"
		;;
	esac
	;;
*)
	echo "Menu tidak tersedia"
	;;
esac 
