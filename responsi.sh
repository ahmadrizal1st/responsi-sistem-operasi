#!/bin/bash

clear
echo "RESPONSI SISTEM OPERASI"
echo "1. BAB 1: Perintah Dasar Linux"
echo "2. BAB 2: Sistem File"
echo "3. BAB 3: Konfigurasi Linux"
echo "4. BAB 4: Utilitas Linux"
echo "5. BAB 5: Proses Input Output"
echo "6. BAB 6: Manajemen Proses"
echo "7. BAB 7: Pemrograman Bash Dasar"
echo "8. BAB 8: Pemrograman Bash Lanjutan"
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
7)
    echo "1. Variabel"
    echo "2. History"
    read -p "Pilih: " pilih7

        case $pilih7 in
            1)
                nama="Linux"
                echo "Halo $nama"
                ;;
            2)
                echo "Riwayat perintah:"
                history | tail
                ;;
            *)
                echo "Pilihan tidak valid!"
                ;;
        esac
    ;;
8)
    echo "1. Percabangan IF"
    echo "2. Perulangan FOR"
    read -p "Pilih: " pilih8

        case $pilih8 in
            1)
                read -p "Masukkan angka: " angka
                if [ $angka -gt 10 ]; then
                    echo "Angka lebih dari 10"
                else
                    echo "Angka kurang atau sama dengan 10"
                fi
                ;;
            2)
                for i in 1 2 3 4 5
                do
                    echo "Perulangan ke-$i"
                done
                ;;
            *)
                echo "Pilihan tidak valid!"
                ;;
        esac
    ;;

